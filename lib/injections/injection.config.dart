// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../core/database/local_database_provider.dart' as _i91;
import '../core/database/news_provider.dart' as _i44;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/network/newtork_info.dart' as _i13;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i19;
import '../features/alerts/data/repository/alert_repository.dart' as _i21;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i20;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i26;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i29;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i33;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i27;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i30;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i34;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i22;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i23;
import '../features/auth/data/repository/auth_repository.dart' as _i25;
import '../features/auth/domain/repositories/auth_repository.dart' as _i24;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i35;
import '../features/auth/domain/usecase/logout_user.dart' as _i42;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i54;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i57;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i58;
import '../features/auth/domain/usecase/verify_email.dart' as _i67;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i87;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i88;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i68;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i36;
import '../features/home/data/repositories/home_repository.dart' as _i38;
import '../features/home/domain/repositories/home_repository.dart' as _i37;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i71;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i77;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i8;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i40;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i39;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i79;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i81;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i78;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i80;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i10;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i12;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i11;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i28;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i31;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i32;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i41;
import '../features/news/data/datasource/news_local_data_source.dart' as _i43;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i14;
import '../features/news/data/repository/news_repository.dart' as _i46;
import '../features/news/domain/repository/news_repository.dart' as _i45;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i70;
import '../features/news/domain/usecase/get_latest_news.dart' as _i72;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i73;
import '../features/news/domain/usecase/get_news_genre.dart' as _i74;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i75;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i90;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i82;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i83;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i84;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i85;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i15;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i17;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i16;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i48;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i50;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i47;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i49;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i51;
import '../features/resume/data/repository/resume_repository.dart' as _i53;
import '../features/resume/domain/repository/resume_repository.dart' as _i52;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i69;
import '../features/resume/domain/usecases/get_resume.dart' as _i76;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i60;
import '../features/resume/domain/usecases/update_address_info.dart' as _i61;
import '../features/resume/domain/usecases/update_other_info.dart' as _i62;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i63;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i64;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i65;
import '../features/resume/domain/usecases/update_work_info.dart' as _i66;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i89;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i86;
import '../features/splash/presentation/splash_bloc.dart' as _i59;
import '../utils/config_reader.dart' as _i9;
import 'injectable/data_connection_checker_injectable_module.dart' as _i93;
import 'injectable/flutter_secure_storage_module.dart' as _i94;
import 'injectable/google_login_injectable_module.dart' as _i95;
import 'injectable/http_client_injectable_module.dart' as _i92;
import 'injectable/shared_preference_module.dart'
    as _i96; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final flutterStorageModule = _$FlutterStorageModule();
  final googleLoginInjectableModule = _$GoogleLoginInjectableModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<_i3.Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<_i4.DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i5.FileProvider>(() => _i5.FileProvider());
  gh.lazySingleton<_i6.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.JapaneseMannersRemoteDataSource>(() =>
      _i8.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i10.LocationInformationLocalDataSourceProtocol>(() =>
      _i10.LocationInformationLocalDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i11.LocationInformationRepositoryProtocol>(() =>
      _i12.LocationInformationRepository(
          dataSource: get<_i10.LocationInformationLocalDataSourceProtocol>()));
  gh.lazySingleton<_i13.NetworkInfo>(() => _i13.NetworkInfoImpl(
      dataConnectionChecker: get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i14.NewsRemoteDataSourceProtocol>(() =>
      _i14.NewsRemoteDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i15.PartnerServicesRemoteDataSource>(() =>
      _i15.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i16.PartnerServicesRepository>(() =>
      _i17.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i15.PartnerServicesRemoteDataSource>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i19.AlertRemoteDataSource>(() =>
      _i19.AlertRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i20.AlertRepository>(() =>
      _i21.AlertRepositoryImpl(dataSource: get<_i19.AlertRemoteDataSource>()));
  gh.lazySingleton<_i22.AuthLocalDataSource>(() => _i22.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i23.AuthRemoteDataSource>(() =>
      _i23.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
      remoteDataSource: get<_i23.AuthRemoteDataSource>(),
      localDataSource: get<_i22.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i26.GetAlerts>(() => _i26.GetAlerts(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i27.GetAlertsBloc>(
      () => _i27.GetAlertsBloc(getAlerts: get<_i26.GetAlerts>()));
  gh.lazySingleton<_i28.GetCountries>(() => _i28.GetCountries(
      repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i29.GetEarthquakes>(() => _i29.GetEarthquakes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i30.GetEarthquakesBloc>(() =>
      _i30.GetEarthquakesBloc(getEarthquakes: get<_i29.GetEarthquakes>()));
  gh.lazySingleton<_i31.GetListOfCityFromPrefectures>(() =>
      _i31.GetListOfCityFromPrefectures(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i32.GetPrefectureCityFromPostalCode>(() =>
      _i32.GetPrefectureCityFromPostalCode(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i33.GetVolcanoes>(() => _i33.GetVolcanoes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i34.GetVolcanoesBloc>(
      () => _i34.GetVolcanoesBloc(getVolcanoes: get<_i33.GetVolcanoes>()));
  gh.lazySingleton<_i35.GetWalletUser>(
      () => _i35.GetWalletUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i36.HomePageRemoteDataSource>(() =>
      _i36.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>()));
  gh.lazySingleton<_i37.HomeReporisitory>(() => _i38.HomeRepositoryImpl(
      remoteDataSource: get<_i36.HomePageRemoteDataSource>()));
  gh.lazySingleton<_i39.JapaneseMannerRepository>(() =>
      _i40.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i8.JapaneseMannersRemoteDataSource>()));
  gh.factory<_i41.LocationViaPostalCodeBloc>(() =>
      _i41.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i32.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i42.LogoutUser>(
      () => _i42.LogoutUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i43.NewsLocalDataSourceProtocol>(() =>
      _i43.NewsLocalDataSource(localProvider: get<_i44.NewsLocalProvider>()));
  gh.lazySingleton<_i45.NewsRepositoryProtocol>(() => _i46.NewsRepository(
      remoteDataSource: get<_i14.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i43.NewsLocalDataSourceProtocol>()));
  gh.factory<_i47.ParnterServicesBloc>(() => _i47.ParnterServicesBloc(
      getPartnerServices: get<_i48.GetPartnerServices>()));
  gh.factory<_i49.PartnerServiceCategoriesBloc>(() =>
      _i49.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i50.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i51.ResumeRemoteDataSource>(() =>
      _i51.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>()));
  gh.lazySingleton<_i52.ResumeRepository>(() => _i53.ResumeRepositoryImpl(
      dataSource: get<_i51.ResumeRemoteDataSource>()));
  gh.lazySingleton<_i54.SignInWithApple>(() => _i54.SignInWithApple(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i55.SignInWithEmailAndPassword>(() =>
      _i55.SignInWithEmailAndPassword(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithFacebook>(() => _i56.SignInWithFacebook(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithGoogle>(() => _i57.SignInWithGoogle(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i58.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i58.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i59.SplashBloc>(
      () => _i59.SplashBloc(getWalletUser: get<_i35.GetWalletUser>()));
  gh.factory<_i60.UpdateAcadamicInfo>(() => _i60.UpdateAcadamicInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i61.UpdateAddressInfo>(() => _i61.UpdateAddressInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i62.UpdateOtherInfo>(() => _i62.UpdateOtherInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i63.UpdatePersonalInfo>(() => _i63.UpdatePersonalInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i64.UpdateQualificationInfo>(() => _i64.UpdateQualificationInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i65.UpdateResumeImage>(() => _i65.UpdateResumeImage(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i66.UpdateWorkInfo>(() => _i66.UpdateWorkInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i67.VerifyEmail>(() => _i67.VerifyEmail(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i68.VerifyEmailBloc>(
      () => _i68.VerifyEmailBloc(verifyEmail: get<_i67.VerifyEmail>()));
  gh.factory<_i69.GetDownloadablePdfLink>(() => _i69.GetDownloadablePdfLink(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i70.GetFavouriteNews>(() =>
      _i70.GetFavouriteNews(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i71.GetHomePageData>(
      () => _i71.GetHomePageData(repository: get<_i37.HomeReporisitory>()));
  gh.lazySingleton<_i72.GetLatestNews>(() => _i72.GetLatestNews(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i73.GetNewsForYou>(() => _i73.GetNewsForYou(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i74.GetNewsGenre>(
      () => _i74.GetNewsGenre(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i75.GetNewsPreferences>(() =>
      _i75.GetNewsPreferences(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.factory<_i76.GetResume>(() => _i76.GetResume(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i77.HomePageDataBloc>(() =>
      _i77.HomePageDataBloc(getHomePageData: get<_i71.GetHomePageData>()));
  gh.factory<_i78.JapaneseMannerBloc>(() => _i78.JapaneseMannerBloc(
      getJapaneseManner: get<_i79.GetJapaneseManner>()));
  gh.factory<_i80.JapaneseMannerCategoriesBloc>(() =>
      _i80.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i81.GetJapaneseMannerCategories>()));
  gh.factory<_i82.LatestNewsBloc>(
      () => _i82.LatestNewsBloc(getNews: get<_i72.GetLatestNews>()));
  gh.factory<_i83.NewsBloc>(
      () => _i83.NewsBloc(getNews: get<_i73.GetNewsForYou>()));
  gh.factory<_i84.NewsGenreBloc>(
      () => _i84.NewsGenreBloc(getNewsGenre: get<_i74.GetNewsGenre>()));
  gh.factory<_i85.NewsPreferenceBloc>(() => _i85.NewsPreferenceBloc(
      getNewsPreferences: get<_i75.GetNewsPreferences>()));
  gh.lazySingleton<_i86.ResumeWatcherBloc>(
      () => _i86.ResumeWatcherBloc(getResume: get<_i76.GetResume>()));
  gh.factory<_i87.SignInFormBloc>(() => _i87.SignInFormBloc(
      signInWithEmailUsecase: get<_i55.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i54.SignInWithApple>(),
      signInWithFacebook: get<_i56.SignInWithFacebook>(),
      signInWithGoogle: get<_i57.SignInWithGoogle>()));
  gh.factory<_i88.SignUpFormBloc>(() => _i88.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i58.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i89.DownloadPdfBloc>(() => _i89.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i69.GetDownloadablePdfLink>()));
  gh.factory<_i90.FavouriteNewsBloc>(() =>
      _i90.FavouriteNewsBloc(getFavouriteNews: get<_i70.GetFavouriteNews>()));
  gh.singleton<_i9.ConfigReader>(_i9.ConfigReaderImpl());
  gh.singleton<_i91.DBProvider>(_i91.DBProviderImpl());
  gh.singleton<_i44.NewsLocalProvider>(
      _i44.NewsLocalProviderImpl(provider: get<_i91.DBProvider>()));
  gh.singleton<_i48.GetPartnerServices>(_i48.GetPartnerServices(
      repository: get<_i16.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i50.GetPartnerServicesCategories>(
      _i50.GetPartnerServicesCategories(
          repository: get<_i16.PartnerServicesRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i79.GetJapaneseManner>(_i79.GetJapaneseManner(
      repository: get<_i39.JapaneseMannerRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i81.GetJapaneseMannerCategories>(
      _i81.GetJapaneseMannerCategories(
          repository: get<_i39.JapaneseMannerRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i92.HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends _i93.DataConnectionCheckerModule {}

class _$FlutterStorageModule extends _i94.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i95.GoogleLoginInjectableModule {}

class _$SharedPreferenceModule extends _i96.SharedPreferenceModule {}
