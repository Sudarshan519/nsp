import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/data/model/remit_rate_mode.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/partner_services/data/model/services_model.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';
import 'package:wallet_app/features/search/presentation/bloc/search_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_service_widget.dart';
import 'package:wallet_app/ui/pages/home/widgets/japanese_manner_widget.dart';
import 'package:wallet_app/ui/pages/home/widgets/remit_rate/remit_rate_widget.dart';
import 'package:wallet_app/ui/pages/utility_payment/utility_payment.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Timer? _debounce;

    Widget searchBody(SearchState state) {
      return state.map(
          loading: (l) => loadingPage(),
          initial: (i) => const Center(child: Text('Please Input search Text')),
          loaded: (loaded) => SearchBody(
                searchData: loaded.list,
              ),
          failure: (f) {
            FlushbarHelper.createError(
              message: f.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message.isNotEmpty
                    ? error.message
                    : AppConstants.someThingWentWrong,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return const Text('Failure');
          });
    }

    return BlocProvider(
      create: (_) => getIt<SearchBloc>(),
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 8),
                margin: const EdgeInsets.symmetric(vertical: 8),

                // height: height * 0.048,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: _searchController,
                  onChanged: (text) {
                    if (_debounce != null) {
                      if (_debounce!.isActive) _debounce!.cancel();
                    }

                    _debounce = Timer(const Duration(milliseconds: 700), () {
                      context.read<SearchBloc>().add(SearchEvent.search(text));
                    });
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      border: InputBorder.none,
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    _searchController.clear();
                    context
                        .read<SearchBloc>()
                        .add(const SearchEvent.search(''));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      Icon(Icons.clear, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
            body: searchBody(state),
          );
        },
      ),
    );
  }
}

class SearchBody extends StatefulWidget {
  final List<SearchDataModel> searchData;
  const SearchBody({Key? key, required this.searchData}) : super(key: key);

  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  String selectedType = '';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget header() {
      return SizedBox(
        height: size.height * 0.08,
        width: size.width,
        child: ListView.builder(
          itemCount: widget.searchData.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final item = widget.searchData[index];

            return InkWell(
              onTap: () => setState(() => selectedType =
                  selectedType == item.type ? '' : item.type.toString()),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: Chip(
                    side: const BorderSide(width: 0.4),
                    backgroundColor: selectedType == item.type
                        ? Palette.primary
                        : Colors.white,
                    label: Text(
                      item.name.toString(),
                      style: TextStyle(
                        color: selectedType == item.type
                            ? Colors.white
                            : Colors.black,
                      ),
                    )),
              ),
            );
          },
        ),
      );
    }

    Widget searchResultBuilder() {
      if (widget.searchData.isEmpty) {
        return const Center(child: Text(' No results found!'));
      }

      var list = widget.searchData;
      if (selectedType.isNotEmpty) {
        list = list.where((element) => element.type == selectedType).toList();
      }
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          final item = list[index];

          final type = getHomeItemTypeString(item.type ?? '');
          switch (type) {
            case HomeItemType.utility_payments:
              final data = List<UtilityPaymentsModel>.from(
                  (item.data as Iterable).map((x) =>
                      UtilityPaymentsModel.fromJson(
                          x as Map<String, dynamic>)));

              if (data.isNotEmpty) {
                return UtilityPamentWidget(
                  paymentData: data,
                );
              }

              return const SizedBox.shrink();

            case HomeItemType.remit_service:
              final data = List<RemitRateModel>.from((item.data as Iterable)
                  .map((x) =>
                      RemitRateModel.fromJson(x as Map<String, dynamic>)));

              if (data.isNotEmpty) {
                return RemitRateWidget(
                  remitRates: data,
                );
              }
              return const SizedBox.shrink();

            case HomeItemType.services:
              final data = List<ServicesModel>.from((item.data as Iterable).map(
                  (x) => ServicesModel.fromJson(x as Map<String, dynamic>)));
              return HomeServiceWidget(
                services: data,
              );

            case HomeItemType.jp_manners:
              final data = List<JapaneseMannerModel>.from(
                  (item.data as Iterable).map((x) =>
                      JapaneseMannerModel.fromJson(x as Map<String, dynamic>)));
              return JapaneseMannerWidget(
                data: data,
              );

            // case HomeItemType.ad_banner:
            //   final banner = model.data.first["image"].toString();
            //   return BannerWidget(
            //     bannerUrl: banner,
            //   );

            // case HomeItemType.news:
            //   return SegmentedNewViewWidget(
            //     key: UniqueKey(),
            //     changeTabPage: changeTabPage,
            //     changeNewsTabPage: changeNewsTabPage,
            //   );

            case HomeItemType.disaster_alert:
              return const SizedBox.shrink();
            default:
              return const SizedBox.shrink();
          }
          // return Container();
        },
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          const Divider(),
          searchResultBuilder(),
        ],
      ),
    );
  }
}
