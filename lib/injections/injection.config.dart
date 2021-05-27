// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/database/local_database_provider.dart' as _i96;
import '../core/database/news_provider.dart' as _i45;
import '../core/file_picker/file_provider.dart' as _i4;
import '../core/logger/logger.dart' as _i13;
import '../core/network/newtork_info.dart' as _i14;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i20;
import '../features/alerts/data/repository/alert_repository.dart' as _i22;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i21;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i27;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i30;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i34;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i28;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i31;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i35;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i23;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i24;
import '../features/auth/data/repository/auth_repository.dart' as _i26;
import '../features/auth/domain/repositories/auth_repository.dart' as _i25;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i36;
import '../features/auth/domain/usecase/logout_user.dart' as _i43;
import '../features/auth/domain/usecase/reset_password.dart' as _i52;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i57;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i58;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i59;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i60;
import '../features/auth/domain/usecase/verify_email.dart' as _i70;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i89;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i91;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i92;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i71;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i37;
import '../features/home/data/repositories/home_repository.dart' as _i39;
import '../features/home/domain/repositories/home_repository.dart' as _i38;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i74;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i80;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i8;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i41;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i40;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i82;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i84;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i81;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i83;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i10;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i12;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i11;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i29;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i32;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i33;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i42;
import '../features/news/data/datasource/news_local_data_source.dart' as _i44;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i47;
import '../features/news/domain/repository/news_repository.dart' as _i46;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i73;
import '../features/news/domain/usecase/get_latest_news.dart' as _i75;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i76;
import '../features/news/domain/usecase/get_news_genre.dart' as _i77;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i78;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i95;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i85;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i86;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i87;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i88;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i16;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i18;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i17;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i49;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i51;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i48;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i50;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i93;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i53;
import '../features/resume/data/repository/resume_repository.dart' as _i55;
import '../features/resume/domain/repository/resume_repository.dart' as _i54;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i72;
import '../features/resume/domain/usecases/get_resume.dart' as _i79;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i62;
import '../features/resume/domain/usecases/update_address_info.dart' as _i63;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i64;
import '../features/resume/domain/usecases/update_other_info.dart' as _i65;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i66;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i67;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i68;
import '../features/resume/domain/usecases/update_work_info.dart' as _i69;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i94;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i90;
import '../features/splash/presentation/splash_bloc.dart' as _i61;
import '../utils/config_reader.dart' as _i9;
import 'injectable/data_connection_checker_injectable_module.dart' as _i100;
import 'injectable/flutter_secure_storage_module.dart' as _i98;
import 'injectable/google_login_injectable_module.dart' as _i99;
import 'injectable/http_client_injectable_module.dart' as _i97;
import 'injectable/shared_preference_module.dart'
    as _i101; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final flutterStorageModule = _$FlutterStorageModule();
  final googleLoginInjectableModule = _$GoogleLoginInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<_i3.Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<_i4.FileProvider>(() => _i4.FileProvider());
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i8.JapaneseMannersRemoteDataSource>(() =>
      _i8.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i10.LocationInformationLocalDataSourceProtocol>(() =>
      _i10.LocationInformationLocalDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i11.LocationInformationRepositoryProtocol>(() =>
      _i12.LocationInformationRepository(
          dataSource: get<_i10.LocationInformationLocalDataSourceProtocol>()));
  gh.lazySingleton<_i13.Logger>(
      () => _i13.LoggerImpl(client: get<_i3.Client>()));
  gh.lazySingleton<_i14.NetworkInfo>(() => _i14.NetworkInfoImpl(
      dataConnectionChecker: get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i15.NewsRemoteDataSourceProtocol>(() =>
      _i15.NewsRemoteDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i16.PartnerServicesRemoteDataSource>(() =>
      _i16.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i17.PartnerServicesRepository>(() =>
      _i18.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i16.PartnerServicesRemoteDataSource>()));
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i20.AlertRemoteDataSource>(() =>
      _i20.AlertRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i21.AlertRepository>(() =>
      _i22.AlertRepositoryImpl(dataSource: get<_i20.AlertRemoteDataSource>()));
  gh.lazySingleton<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSourceImpl(
      secureStorage: get<_i5.FlutterSecureStorage>(),
      preferences: get<_i19.SharedPreferences>()));
  gh.lazySingleton<_i24.AuthRemoteDataSource>(() =>
      _i24.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i25.AuthRepository>(() => _i26.AuthRepositoryImpl(
      remoteDataSource: get<_i24.AuthRemoteDataSource>(),
      localDataSource: get<_i23.AuthLocalDataSource>(),
      googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i27.GetAlerts>(() => _i27.GetAlerts(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i28.GetAlertsBloc>(
      () => _i28.GetAlertsBloc(getAlerts: get<_i27.GetAlerts>()));
  gh.lazySingleton<_i29.GetCountries>(() => _i29.GetCountries(
      repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i30.GetEarthquakes>(() => _i30.GetEarthquakes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i31.GetEarthquakesBloc>(() =>
      _i31.GetEarthquakesBloc(getEarthquakes: get<_i30.GetEarthquakes>()));
  gh.lazySingleton<_i32.GetListOfCityFromPrefectures>(() =>
      _i32.GetListOfCityFromPrefectures(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i33.GetPrefectureCityFromPostalCode>(() =>
      _i33.GetPrefectureCityFromPostalCode(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i34.GetVolcanoes>(() => _i34.GetVolcanoes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i35.GetVolcanoesBloc>(
      () => _i35.GetVolcanoesBloc(getVolcanoes: get<_i34.GetVolcanoes>()));
  gh.lazySingleton<_i36.GetWalletUser>(
      () => _i36.GetWalletUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i37.HomePageRemoteDataSource>(() =>
      _i37.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>()));
  gh.lazySingleton<_i38.HomeReporisitory>(() => _i39.HomeRepositoryImpl(
      remoteDataSource: get<_i37.HomePageRemoteDataSource>()));
  gh.lazySingleton<_i40.JapaneseMannerRepository>(() =>
      _i41.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i8.JapaneseMannersRemoteDataSource>()));
  gh.factory<_i42.LocationViaPostalCodeBloc>(() =>
      _i42.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i33.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i43.LogoutUser>(
      () => _i43.LogoutUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i44.NewsLocalDataSourceProtocol>(() =>
      _i44.NewsLocalDataSource(
          localProvider: get<_i45.NewsLocalProvider>(),
          preferences: get<_i19.SharedPreferences>()));
  gh.lazySingleton<_i46.NewsRepositoryProtocol>(() => _i47.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i44.NewsLocalDataSourceProtocol>()));
  gh.factory<_i48.ParnterServicesBloc>(() => _i48.ParnterServicesBloc(
      getPartnerServices: get<_i49.GetPartnerServices>()));
  gh.factory<_i50.PartnerServiceCategoriesBloc>(() =>
      _i50.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i51.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i52.ResetPasswordUseCase>(() => _i52.ResetPasswordUseCase(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i53.ResumeRemoteDataSource>(() =>
      _i53.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>()));
  gh.lazySingleton<_i54.ResumeRepository>(() => _i55.ResumeRepositoryImpl(
      dataSource: get<_i53.ResumeRemoteDataSource>()));
  gh.lazySingleton<_i56.SignInWithApple>(() => _i56.SignInWithApple(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithEmailAndPassword>(() =>
      _i57.SignInWithEmailAndPassword(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i58.SignInWithFacebook>(() => _i58.SignInWithFacebook(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i59.SignInWithGoogle>(() => _i59.SignInWithGoogle(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i60.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i60.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i61.SplashBloc>(
      () => _i61.SplashBloc(getWalletUser: get<_i36.GetWalletUser>()));
  gh.factory<_i62.UpdateAcadamicInfo>(() => _i62.UpdateAcadamicInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i63.UpdateAddressInfo>(() => _i63.UpdateAddressInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i64.UpdateKycInfo>(() => _i64.UpdateKycInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i65.UpdateOtherInfo>(() => _i65.UpdateOtherInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i66.UpdatePersonalInfo>(() => _i66.UpdatePersonalInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i67.UpdateQualificationInfo>(() => _i67.UpdateQualificationInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i68.UpdateResumeImage>(() => _i68.UpdateResumeImage(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i69.UpdateWorkInfo>(() => _i69.UpdateWorkInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i70.VerifyEmail>(() => _i70.VerifyEmail(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i71.VerifyEmailBloc>(
      () => _i71.VerifyEmailBloc(verifyEmail: get<_i70.VerifyEmail>()));
  gh.factory<_i72.GetDownloadablePdfLink>(() => _i72.GetDownloadablePdfLink(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i73.GetFavouriteNews>(() =>
      _i73.GetFavouriteNews(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i74.GetHomePageData>(() => _i74.GetHomePageData(
      repository: get<_i38.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i75.GetLatestNews>(() => _i75.GetLatestNews(
      repository: get<_i46.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i76.GetNewsForYou>(() => _i76.GetNewsForYou(
      repository: get<_i46.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i77.GetNewsGenre>(
      () => _i77.GetNewsGenre(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i78.GetNewsPreferences>(() =>
      _i78.GetNewsPreferences(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.factory<_i79.GetResume>(() => _i79.GetResume(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i80.HomePageDataBloc>(() =>
      _i80.HomePageDataBloc(getHomePageData: get<_i74.GetHomePageData>()));
  gh.factory<_i81.JapaneseMannerBloc>(() => _i81.JapaneseMannerBloc(
      getJapaneseManner: get<_i82.GetJapaneseManner>()));
  gh.factory<_i83.JapaneseMannerCategoriesBloc>(() =>
      _i83.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i84.GetJapaneseMannerCategories>()));
  gh.lazySingleton<_i85.LatestNewsBloc>(
      () => _i85.LatestNewsBloc(getNews: get<_i75.GetLatestNews>()));
  gh.lazySingleton<_i86.NewsBloc>(
      () => _i86.NewsBloc(getNews: get<_i76.GetNewsForYou>()));
  gh.factory<_i87.NewsGenreBloc>(
      () => _i87.NewsGenreBloc(getNewsGenre: get<_i77.GetNewsGenre>()));
  gh.factory<_i88.NewsPreferenceBloc>(() => _i88.NewsPreferenceBloc(
      getNewsPreferences: get<_i78.GetNewsPreferences>()));
  gh.factory<_i89.PasswordResetBloc>(() => _i89.PasswordResetBloc(
      resetPasswordUseCase: get<_i52.ResetPasswordUseCase>()));
  gh.lazySingleton<_i90.ResumeWatcherBloc>(
      () => _i90.ResumeWatcherBloc(getResume: get<_i79.GetResume>()));
  gh.factory<_i91.SignInFormBloc>(() => _i91.SignInFormBloc(
      signInWithEmailUsecase: get<_i57.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i56.SignInWithApple>(),
      signInWithFacebook: get<_i58.SignInWithFacebook>(),
      signInWithGoogle: get<_i59.SignInWithGoogle>()));
  gh.factory<_i92.SignUpFormBloc>(() => _i92.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i60.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i93.UpdateProfileBloc>(() => _i93.UpdateProfileBloc(
      updateKycInfo: get<_i64.UpdateKycInfo>(),
      updateResumeImage: get<_i68.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i32.GetListOfCityFromPrefectures>()));
  gh.factory<_i94.DownloadPdfBloc>(() => _i94.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i72.GetDownloadablePdfLink>()));
  gh.factory<_i95.FavouriteNewsBloc>(() =>
      _i95.FavouriteNewsBloc(getFavouriteNews: get<_i73.GetFavouriteNews>()));
  gh.singleton<_i9.ConfigReader>(_i9.ConfigReaderImpl());
  gh.singleton<_i96.DBProvider>(_i96.DBProviderImpl());
  gh.singleton<_i45.NewsLocalProvider>(
      _i45.NewsLocalProviderImpl(provider: get<_i96.DBProvider>()));
  gh.singleton<_i49.GetPartnerServices>(_i49.GetPartnerServices(
      repository: get<_i17.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i51.GetPartnerServicesCategories>(
      _i51.GetPartnerServicesCategories(
          repository: get<_i17.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i82.GetJapaneseManner>(_i82.GetJapaneseManner(
      repository: get<_i40.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i84.GetJapaneseMannerCategories>(
      _i84.GetJapaneseMannerCategories(
          repository: get<_i40.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i97.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i98.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i99.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i100.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i101.SharedPreferenceModule {}
