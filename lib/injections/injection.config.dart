// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/data/datasource/auth_local_data_source.dart';
import '../features/auth/data/datasource/auth_remote_data_source.dart';
import '../features/auth/data/repository/auth_repository.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../utils/config_reader.dart';
import '../core/database/local_database_provider.dart';
import 'injectable/data_connection_checker_injectable_module.dart';
import '../features/news/domain/usecase/get_news.dart';
import '../features/auth/domain/usecase/get_insurange_user.dart';
import 'injectable/http_client_injectable_module.dart';
import '../features/auth/domain/usecase/logout_user.dart';
import '../core/network/newtork_info.dart';
import '../features/news/presentation/news_list/news_bloc.dart';
import '../features/news/data/datasource/news_local_data_source.dart';
import '../core/database/news_provider.dart';
import '../features/news/data/datasource/news_remote_data_source.dart';
import '../features/news/data/repository/news_repository.dart';
import '../features/news/domain/repository/news_repository.dart';
import 'injectable/shared_preference_module.dart';
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import '../features/auth/domain/usecase/sign_in_with_email.dart';
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import '../features/auth/domain/usecase/sign_up_user.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfoProtocol>(
      () => NetworkInfo(dataConnectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<NewsRemoteDataSourceProtocol>(
      () => NewsRemoteDataSource(client: get<Client>()));
  final resolvedSharedPreferences = await sharedPreferenceModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<AuthLocalDataSourceProtocol>(
      () => AuthLocalDataSource(preferences: get<SharedPreferences>()));
  gh.lazySingleton<AuthRemoteDataSourceProtocol>(
      () => AuthRemoteDataSource(client: get<Client>()));
  gh.lazySingleton<AuthRepositoryProtocol>(() => AuthRepository(
      remoteDataSource: get<AuthRemoteDataSourceProtocol>(),
      localDataSource: get<AuthLocalDataSourceProtocol>()));
  gh.lazySingleton<GetWalletUser>(
      () => GetWalletUser(repository: get<AuthRepositoryProtocol>()));
  gh.lazySingleton<LogoutUser>(
      () => LogoutUser(repository: get<AuthRepositoryProtocol>()));
  gh.lazySingleton<NewsLocalDataSourceProtocol>(
      () => NewsLocalDataSource(localProvider: get<NewsLocalProvider>()));
  gh.lazySingleton<NewsRepositoryProtocol>(() => NewsRepository(
      remoteDataSource: get<NewsRemoteDataSourceProtocol>(),
      localDataSource: get<NewsLocalDataSourceProtocol>()));
  gh.lazySingleton<SignInWithEmailAndPassword>(() =>
      SignInWithEmailAndPassword(repository: get<AuthRepositoryProtocol>()));
  gh.lazySingleton<SignUpWithEmailPasswordAndUserDetail>(() =>
      SignUpWithEmailPasswordAndUserDetail(
          repository: get<AuthRepositoryProtocol>()));
  gh.lazySingleton<GetNews>(() => GetNews(
      repository: get<NewsRepositoryProtocol>(),
      networkInfo: get<NetworkInfoProtocol>()));
  gh.factory<NewsBloc>(() => NewsBloc(getNews: get<GetNews>()));
  gh.factory<SignInFormBloc>(
      () => SignInFormBloc(get<SignInWithEmailAndPassword>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(
      signUpWithEmailUsecase: get<SignUpWithEmailPasswordAndUserDetail>()));

  // Eager singletons must be registered in the right order
  gh.singleton<ConfigReader>(ConfigReader());
  gh.singleton<DBProvider>(DBProviderImpl());
  gh.singleton<NewsLocalProvider>(
      NewsLocalProviderImpl(provider: get<DBProvider>()));
  return get;
}

class _$HttpClientInjectableModule extends HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends SharedPreferenceModule {}
