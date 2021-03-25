// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/data/datasource/auth_local_data_source.dart';
import '../features/auth/data/datasource/auth_remote_data_source.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/data/repository/auth_repository.dart';
import '../utils/config_reader.dart';
import '../core/database/local_database_provider.dart';
import 'injectable/data_connection_checker_injectable_module.dart';
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart';
import '../core/file_picker/file_provider.dart';
import 'injectable/flutter_secure_storage_module.dart';
import '../features/location_information/domain/usecases/get_countries.dart';
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart';
import '../features/home/domain/usecases/get_home_page_data.dart';
import '../features/location_information/domain/usecases/get_japan_city.dart';
import '../features/news/domain/usecase/get_latest_news.dart';
import '../features/location_information/domain/usecases/get_nepal_district.dart';
import '../features/news/domain/usecase/get_news_for_you.dart';
import '../features/location_information/domain/usecases/get_prefecture.dart';
import '../features/auth/domain/usecase/get_wallet_user.dart';
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart';
import '../features/home/data/datasource/home_remote_data_source.dart';
import '../features/home/domain/repositories/home_repository.dart';
import '../features/home/data/repositories/home_repository.dart';
import 'injectable/http_client_injectable_module.dart';
import '../features/news/presentation/latest_news/latest_news_bloc.dart';
import '../features/location_information/data/datasource/location_information_local_datasource.dart';
import '../features/location_information/data/repository/location_information_repositories.dart';
import '../features/location_information/domain/repository/location_information_repositories.dart';
import '../features/auth/domain/usecase/logout_user.dart';
import '../core/network/newtork_info.dart';
import '../features/news/presentation/news_for_you/news_bloc.dart';
import '../features/news/data/datasource/news_local_data_source.dart';
import '../core/database/news_provider.dart';
import '../features/news/data/datasource/news_remote_data_source.dart';
import '../features/news/data/repository/news_repository.dart';
import '../features/news/domain/repository/news_repository.dart';
import '../features/resume/data/data_source/resume_remote_data_source.dart';
import '../features/resume/domain/repository/resume_repository.dart';
import '../features/resume/data/repository/resume_repository.dart';
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'injectable/shared_preference_module.dart';
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart';
import '../features/auth/domain/usecase/sign_in_with_email.dart';
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import '../features/auth/domain/usecase/sign_up_user.dart';
import '../features/splash/presentation/splash_bloc.dart';
import '../features/resume/domain/usecases/update_academics_info.dart';
import '../features/resume/domain/usecases/update_address_info.dart';
import '../features/resume/domain/usecases/update_other_info.dart';
import '../features/resume/domain/usecases/update_personal_info.dart';
import '../features/resume/domain/usecases/update_qualification_info.dart';
import '../features/resume/domain/usecases/update_resume_image.dart';
import '../features/resume/domain/usecases/update_work_info.dart';
import '../features/auth/domain/usecase/verify_email.dart';
import '../features/auth/presentation/verify_email/verify_email_bloc.dart';

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
  final flutterStorageModule = _$FlutterStorageModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<FileProvider>(() => FileProvider());
  gh.lazySingleton<FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<LocationInformationLocalDataSourceProtocol>(
      () => LocationInformationLocalDataSource(client: get<Client>()));
  gh.lazySingleton<LocationInformationRepositoryProtocol>(() =>
      LocationInformationRepository(
          localDataSource: get<LocationInformationLocalDataSourceProtocol>()));
  gh.lazySingleton<NetworkInfo>(() =>
      NetworkInfoImpl(dataConnectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<NewsRemoteDataSourceProtocol>(() =>
      NewsRemoteDataSource(client: get<Client>(), config: get<ConfigReader>()));
  gh.factory<ResumeWatcherBloc>(() => ResumeWatcherBloc());
  final resolvedSharedPreferences = await sharedPreferenceModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<AuthLocalDataSource>(() => AuthLocalDataSourceImpl(
      secureStorage: get<FlutterSecureStorage>(),
      preferences: get<SharedPreferences>()));
  gh.lazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(
      client: get<Client>(), config: get<ConfigReader>()));
  gh.lazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      remoteDataSource: get<AuthRemoteDataSource>(),
      localDataSource: get<AuthLocalDataSource>()));
  gh.lazySingleton<GetCountries>(() =>
      GetCountries(repository: get<LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<GetJapanCity>(() =>
      GetJapanCity(repository: get<LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<GetNepalDistrict>(() => GetNepalDistrict(
      repository: get<LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<GetPrefecture>(() =>
      GetPrefecture(repository: get<LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<GetWalletUser>(
      () => GetWalletUser(repository: get<AuthRepository>()));
  gh.lazySingleton<HomePageRemoteDataSource>(() => HomePageRemoteDataSourceImpl(
        client: get<Client>(),
        config: get<ConfigReader>(),
        auth: get<AuthLocalDataSource>(),
      ));
  gh.lazySingleton<HomeReporisitory>(() =>
      HomeRepositoryImpl(remoteDataSource: get<HomePageRemoteDataSource>()));
  gh.lazySingleton<LogoutUser>(
      () => LogoutUser(repository: get<AuthRepository>()));
  gh.lazySingleton<NewsLocalDataSourceProtocol>(
      () => NewsLocalDataSource(localProvider: get<NewsLocalProvider>()));
  gh.lazySingleton<NewsRepositoryProtocol>(() => NewsRepository(
      remoteDataSource: get<NewsRemoteDataSourceProtocol>(),
      localDataSource: get<NewsLocalDataSourceProtocol>()));
  gh.lazySingleton<ResumeRemoteDataSource>(() => ResumeRemoteDataSourceImpl(
        client: get<Client>(),
        config: get<ConfigReader>(),
        auth: get<AuthLocalDataSource>(),
      ));
  gh.lazySingleton<ResumeRepository>(
      () => ResumeRepositoryImpl(dataSource: get<ResumeRemoteDataSource>()));
  gh.lazySingleton<SignInWithEmailAndPassword>(() => SignInWithEmailAndPassword(
      repository: get<AuthRepository>(), networkInfo: get<NetworkInfo>()));
  gh.lazySingleton<SignUpWithEmailPasswordAndUserDetail>(() =>
      SignUpWithEmailPasswordAndUserDetail(
          repository: get<AuthRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<SplashBloc>(() => SplashBloc(getWalletUser: get<GetWalletUser>()));
  gh.factory<UpdateAcadamicInfo>(() => UpdateAcadamicInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdateAddressInfo>(() => UpdateAddressInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdateOtherInfo>(() => UpdateOtherInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdatePersonalInfo>(() => UpdatePersonalInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdateQualificationInfo>(() => UpdateQualificationInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdateResumeImage>(() => UpdateResumeImage(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<UpdateWorkInfo>(() => UpdateWorkInfo(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.lazySingleton<VerifyEmail>(() => VerifyEmail(
      repository: get<AuthRepository>(), networkInfo: get<NetworkInfo>()));
  gh.factory<VerifyEmailBloc>(
      () => VerifyEmailBloc(verifyEmail: get<VerifyEmail>()));
  gh.factory<GetDownloadablePdfLink>(() => GetDownloadablePdfLink(
      repository: get<ResumeRepository>(), networkInfo: get<NetworkInfo>()));
  gh.lazySingleton<GetHomePageData>(
      () => GetHomePageData(repository: get<HomeReporisitory>()));
  gh.lazySingleton<GetLatestNews>(() => GetLatestNews(
      repository: get<NewsRepositoryProtocol>(),
      networkInfo: get<NetworkInfo>()));
  gh.lazySingleton<GetNewsForYou>(() => GetNewsForYou(
      repository: get<NewsRepositoryProtocol>(),
      networkInfo: get<NetworkInfo>()));
  gh.lazySingleton<HomePageDataBloc>(
      () => HomePageDataBloc(getHomePageData: get<GetHomePageData>()));
  gh.factory<LatestNewsBloc>(
      () => LatestNewsBloc(getNews: get<GetLatestNews>()));
  gh.factory<NewsBloc>(() => NewsBloc(getNews: get<GetNewsForYou>()));
  gh.factory<SignInFormBloc>(
      () => SignInFormBloc(get<SignInWithEmailAndPassword>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(
      signUpWithEmailUsecase: get<SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<DownloadPdfBloc>(() =>
      DownloadPdfBloc(getDownloadablePdfLink: get<GetDownloadablePdfLink>()));

  // Eager singletons must be registered in the right order
  gh.singleton<ConfigReader>(ConfigReader());
  gh.singleton<DBProvider>(DBProviderImpl());
  gh.singleton<NewsLocalProvider>(
      NewsLocalProviderImpl(provider: get<DBProvider>()));
  return get;
}

class _$HttpClientInjectableModule extends HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends DataConnectionCheckerModule {}

class _$FlutterStorageModule extends FlutterStorageModule {}

class _$SharedPreferenceModule extends SharedPreferenceModule {}
