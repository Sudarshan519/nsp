import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/search/presentation/bloc/search_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/ui/pages/search/search_body.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class SearchPage extends StatelessWidget {
  final HomeItemType? type;

  final TextEditingController _searchController = TextEditingController();

  SearchPage({Key? key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchBody(SearchState state) {
      return state.map(
          loading: (l) => loadingPage(),
          initial: (i) => const Center(child: Text('Please Input search Text')),
          loaded: (loaded) => SearchBody(
                searchData: loaded.list,
                type: type,
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
            return const Center(child: Text('Failed to load result'));
          });
    }

    return BlocProvider(
      create: (_) => getIt<SearchBloc>(),
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: const BackButton(color: Colors.white),
              titleSpacing: 0,
              leadingWidth: 40,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Container(
                height: 34,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  textInputAction: TextInputAction.search,
                  textAlignVertical: TextAlignVertical.center,
                  controller: _searchController,
                  onSubmitted: (text) {
                    AnalyticsService.search(text);
                    context.read<SearchBloc>().add(SearchEvent.search(text));
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 12, bottom: 10),
                      border: InputBorder.none,
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
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
                          radius: 16,
                        ),
                        Icon(
                          Icons.clear,
                          color: Colors.black,
                          size: 22,
                        ),
                      ],
                    ),
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
