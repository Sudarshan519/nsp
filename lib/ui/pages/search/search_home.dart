import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/data/model/home_data_model.dart';
import 'package:wallet_app/features/search/presentation/bloc/search_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    Widget body(List<HomeDataModel> list) {
      return Container();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: height * 0.048,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.only(left: 8),
          child: TextField(
            controller: _searchController,
            onChanged: (text) {
              getIt<SearchBloc>().add(SearchEvent.search(text));
            },
            autofocus: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                suffixIcon: Icon(Icons.search)),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ElevatedButton(
              onPressed: () {
                _searchController.clear();
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Colors.white, // <-- Button color
              ),
              child: const Icon(Icons.clear, color: Colors.black),
            ),
          )
        ],
      ),
      body: BlocProvider(
        create: (_) => getIt<SearchBloc>(),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.map(
                loading: (data) => loadingPage(),
                initial: (initial) =>
                    const Center(child: Text('Plase Input Text')),
                loaded: (data) => body(data.list),
                failure: (failure) => Container());
          },
        ),
      ),
    );
  }
}
