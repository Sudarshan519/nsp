// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../core/database/local_database_provider.dart';
import 'injectable/data_connection_checker_injectable_module.dart';
import '../features/news/domain/usecase/get_news.dart';
import 'injectable/http_client_injectable_module.dart';
import '../core/network/newtork_info.dart';
import '../features/news/presentation/news_list/news_bloc.dart';
import '../features/news/data/datasource/news_local_data_source.dart';
import '../core/database/news_provider.dart';
import '../features/news/data/datasource/news_remote_data_source.dart';
import '../features/news/data/repository/news_repository.dart';
import '../features/news/domain/repository/news_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  gh.factory<Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfoProtocol>(
      () => NetworkInfo(dataConnectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<NewsRemoteDataSourceProtocol>(
      () => NewsRemoteDataSource(client: get<Client>()));
  gh.lazySingleton<NewsLocalDataSourceProtocol>(
      () => NewsLocalDataSource(localProvider: get<NewsLocalProvider>()));
  gh.lazySingleton<NewsRepositoryProtocol>(() => NewsRepository(
      remoteDataSource: get<NewsRemoteDataSourceProtocol>(),
      localDataSource: get<NewsLocalDataSourceProtocol>()));
  gh.lazySingleton<GetNews>(() => GetNews(
      repository: get<NewsRepositoryProtocol>(),
      networkInfo: get<NetworkInfoProtocol>()));
  gh.factory<NewsBloc>(() => NewsBloc(getNews: get<GetNews>()));

  // Eager singletons must be registered in the right order
  gh.singleton<DBProvider>(DBProviderImpl());
  gh.singleton<NewsLocalProvider>(
      NewsLocalProviderImpl(provider: get<DBProvider>()));
  return get;
}

class _$HttpClientInjectableModule extends HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends DataConnectionCheckerModule {}
