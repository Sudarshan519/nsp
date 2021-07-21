import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/home/data/model/home_data_model.dart';
import 'package:wallet_app/features/search/domain/usecases/get_search_page_data.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetSearchPageData getSearchPageData;

  SearchBloc(this.getSearchPageData) : super(const _Initial());
  final minimumChars = 3;

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(search: (s) async* {
      if (s.searchText.length >= minimumChars) {
        yield const _Loading();
        final result = await getSearchPageData(s.searchText);

        // yield result.fold((l) => _Failure(l), (r) => _Loaded(r));
      }
    });
  }
}
