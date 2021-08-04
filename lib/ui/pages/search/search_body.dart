import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/data/model/remit_rate_mode.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/partner_services/data/model/services_model.dart';
import 'package:wallet_app/features/search/data/model/search_data_model.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_service_widget.dart';
import 'package:wallet_app/ui/pages/home/widgets/japanese_manner_widget.dart';
import 'package:wallet_app/ui/pages/home/widgets/remit_rate/remit_rate_widget.dart';
import 'package:wallet_app/ui/pages/utility_payment/utility_payment.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class SearchBody extends StatefulWidget {
  final List<SearchDataModel> searchData;
  final HomeItemType? type;
  const SearchBody({Key? key, required this.searchData, this.type})
      : super(key: key);

  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  String selectedType = '';
  final String allSelect = 'All';

  @override
  void initState() {
    super.initState();

    selectedType = widget.type?.toString().split('.').last ?? allSelect;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget allButton() {
      return InkWell(
        onTap: () => setState(() => selectedType = allSelect),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Chip(
              side: const BorderSide(width: 0.46),
              backgroundColor:
                  selectedType == allSelect ? Palette.primary : Colors.white,
              label: Text(
                allSelect,
                style: TextStyle(
                  color:
                      selectedType == allSelect ? Colors.white : Colors.black,
                ),
              )),
        ),
      );
    }

    Widget header() {
      //removing header if search is only of selected type
      if (widget.type != null) return const SizedBox();

      return SizedBox(
        height: size.height * 0.08,
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //All button
              allButton(),
              ListView.builder(
                itemCount: widget.searchData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final item = widget.searchData[index];

                  return InkWell(
                    onTap: () => setState(() => selectedType =
                        selectedType == item.type
                            ? allSelect
                            : item.type.toString()),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: Chip(
                          side: const BorderSide(width: 0.46),
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
            ],
          ),
        ),
      );
    }

    Widget searchResultBuilder() {
      if (widget.searchData.isEmpty) {
        return const Center(child: Text(' No results found!'));
      }

      var list = widget.searchData;
      if (selectedType != allSelect) {
        list = list.where((element) => element.type == selectedType).toList();
      }
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          final item = list[index];

          final type = getHomeItemTypeString(item.type ?? allSelect);
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
