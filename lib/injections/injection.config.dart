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
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../core/database/local_database_provider.dart' as _i103;
import '../core/database/news_provider.dart' as _i42;
import '../core/file_picker/file_provider.dart' as _i4;
import '../core/logger/logger.dart' as _i8;
import '../core/network/newtork_info.dart' as _i9;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i16;
import '../features/alerts/data/repository/alert_repository.dart' as _i18;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i17;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i23;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i25;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i27;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i24;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i26;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i28;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i19;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i20;
import '../features/auth/data/repository/auth_repository.dart' as _i22;
import '../features/auth/domain/repositories/auth_repository.dart' as _i21;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i29;
import '../features/auth/domain/usecase/logout_user.dart' as _i40;
import '../features/auth/domain/usecase/reset_password.dart' as _i49;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i53;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i54;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i56;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i57;
import '../features/auth/domain/usecase/verify_email.dart' as _i69;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i92;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i94;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i95;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i70;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i30;
import '../features/home/data/repositories/home_repository.dart' as _i32;
import '../features/home/domain/repositories/home_repository.dart' as _i31;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i74;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i84;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i33;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i86;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i85;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i100;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i102;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i99;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i101;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i34;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i36;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i35;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i77;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i59;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i81;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i60;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i37;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i39;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i38;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i71;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i76;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i82;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i88;
import '../features/news/data/datasource/news_local_data_source.dart' as _i41;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i10;
import '../features/news/data/repository/news_repository.dart' as _i44;
import '../features/news/domain/repository/news_repository.dart' as _i43;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i73;
import '../features/news/domain/usecase/get_latest_news.dart' as _i75;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i78;
import '../features/news/domain/usecase/get_news_genre.dart' as _i79;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i80;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i98;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i87;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i89;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i90;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i91;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i12;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i14;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i13;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i46;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i48;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i45;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i47;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i96;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i50;
import '../features/resume/data/repository/resume_repository.dart' as _i52;
import '../features/resume/domain/repository/resume_repository.dart' as _i51;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i72;
import '../features/resume/domain/usecases/get_resume.dart' as _i83;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i61;
import '../features/resume/domain/usecases/update_address_info.dart' as _i62;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i63;
import '../features/resume/domain/usecases/update_other_info.dart' as _i64;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i65;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i66;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i67;
import '../features/resume/domain/usecases/update_work_info.dart' as _i68;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i97;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i93;
import '../features/splash/presentation/splash_bloc.dart' as _i58;
import '../utils/config_reader.dart' as _i11;
import 'injectable/data_connection_checker_injectable_module.dart' as _i107;
import 'injectable/flutter_secure_storage_module.dart' as _i105;
import 'injectable/google_login_injectable_module.dart' as _i106;
import 'injectable/http_client_injectable_module.dart' as _i104;
import 'injectable/shared_preference_module.dart'
    as _i108; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.Logger>(() => _i8.LoggerImpl(client: get<_i3.Client>()));
  gh.lazySingleton<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl(
      dataConnectionChecker: get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i10.NewsRemoteDataSourceProtocol>(() =>
      _i10.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i12.PartnerServicesRemoteDataSource>(() =>
      _i12.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i13.PartnerServicesRepository>(() =>
      _i14.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i12.PartnerServicesRemoteDataSource>(),
          logger: get<_i8.Logger>()));
  await gh.factoryAsync<_i15.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i16.AlertRemoteDataSource>(() =>
      _i16.AlertRemoteDataSourceImpl(
          logger: get<_i8.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>()));
  gh.lazySingleton<_i17.AlertRepository>(() => _i18.AlertRepositoryImpl(
      dataSource: get<_i16.AlertRemoteDataSource>(),
      logger: get<_i8.Logger>()));
  gh.lazySingleton<_i19.AuthLocalDataSource>(() => _i19.AuthLocalDataSourceImpl(
      secureStorage: get<_i5.FlutterSecureStorage>(),
      preferences: get<_i15.SharedPreferences>(),
      logger: get<_i8.Logger>()));
  gh.lazySingleton<_i20.AuthRemoteDataSource>(() =>
      _i20.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i21.AuthRepository>(() => _i22.AuthRepositoryImpl(
      remoteDataSource: get<_i20.AuthRemoteDataSource>(),
      localDataSource: get<_i19.AuthLocalDataSource>(),
      googleSignIn: get<_i6.GoogleSignIn>(),
      logger: get<_i8.Logger>()));
  gh.lazySingleton<_i23.GetAlerts>(() => _i23.GetAlerts(
      repository: get<_i17.AlertRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i24.GetAlertsBloc>(
      () => _i24.GetAlertsBloc(getAlerts: get<_i23.GetAlerts>()));
  gh.lazySingleton<_i25.GetEarthquakes>(() => _i25.GetEarthquakes(
      repository: get<_i17.AlertRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i26.GetEarthquakesBloc>(() =>
      _i26.GetEarthquakesBloc(getEarthquakes: get<_i25.GetEarthquakes>()));
  gh.lazySingleton<_i27.GetVolcanoes>(() => _i27.GetVolcanoes(
      repository: get<_i17.AlertRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i28.GetVolcanoesBloc>(
      () => _i28.GetVolcanoesBloc(getVolcanoes: get<_i27.GetVolcanoes>()));
  gh.lazySingleton<_i29.GetWalletUser>(
      () => _i29.GetWalletUser(repository: get<_i21.AuthRepository>()));
  gh.lazySingleton<_i30.HomePageRemoteDataSource>(() =>
      _i30.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i19.AuthLocalDataSource>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i31.HomeReporisitory>(() => _i32.HomeRepositoryImpl(
      remoteDataSource: get<_i30.HomePageRemoteDataSource>(),
      logger: get<_i8.Logger>()));
  gh.lazySingleton<_i33.JapaneseMannersRemoteDataSource>(() =>
      _i33.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i34.LoadBalanceDataSource>(() =>
      _i34.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i19.AuthLocalDataSource>()));
  gh.lazySingleton<_i35.LoadBalanceRepositories>(() =>
      _i36.LoadBalanceRepositoriesImpl(
          dataSource: get<_i34.LoadBalanceDataSource>()));
  gh.lazySingleton<_i37.LocationInformationLocalDataSourceProtocol>(() =>
      _i37.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i38.LocationInformationRepositoryProtocol>(() =>
      _i39.LocationInformationRepository(
          dataSource: get<_i37.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i40.LogoutUser>(
      () => _i40.LogoutUser(repository: get<_i21.AuthRepository>()));
  gh.lazySingleton<_i41.NewsLocalDataSourceProtocol>(() =>
      _i41.NewsLocalDataSource(
          localProvider: get<_i42.NewsLocalProvider>(),
          preferences: get<_i15.SharedPreferences>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i43.NewsRepositoryProtocol>(() => _i44.NewsRepository(
      remoteDataSource: get<_i10.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i41.NewsLocalDataSourceProtocol>(),
      logger: get<_i8.Logger>()));
  gh.factory<_i45.ParnterServicesBloc>(() => _i45.ParnterServicesBloc(
      getPartnerServices: get<_i46.GetPartnerServices>()));
  gh.factory<_i47.PartnerServiceCategoriesBloc>(() =>
      _i47.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i48.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i49.ResetPasswordUseCase>(() => _i49.ResetPasswordUseCase(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i50.ResumeRemoteDataSource>(() =>
      _i50.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i19.AuthLocalDataSource>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i51.ResumeRepository>(() => _i52.ResumeRepositoryImpl(
      dataSource: get<_i50.ResumeRemoteDataSource>(),
      logger: get<_i8.Logger>()));
  gh.lazySingleton<_i53.SignInWithApple>(() => _i53.SignInWithApple(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i54.SignInWithEmailAndPassword>(() =>
      _i54.SignInWithEmailAndPassword(
          repository: get<_i21.AuthRepository>(),
          networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i55.SignInWithFacebook>(() => _i55.SignInWithFacebook(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithGoogle>(() => _i56.SignInWithGoogle(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i57.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i57.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i21.AuthRepository>(),
          networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i58.SplashBloc>(
      () => _i58.SplashBloc(getWalletUser: get<_i29.GetWalletUser>()));
  gh.lazySingleton<_i59.TopUpViaStripe>(() => _i59.TopUpViaStripe(
      networkInfo: get<_i9.NetworkInfo>(),
      repository: get<_i35.LoadBalanceRepositories>()));
  gh.factory<_i60.TopupViaStripeBloc>(() =>
      _i60.TopupViaStripeBloc(topUpViaStripe: get<_i59.TopUpViaStripe>()));
  gh.factory<_i61.UpdateAcadamicInfo>(() => _i61.UpdateAcadamicInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i62.UpdateAddressInfo>(() => _i62.UpdateAddressInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i63.UpdateKycInfo>(() => _i63.UpdateKycInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i64.UpdateOtherInfo>(() => _i64.UpdateOtherInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i65.UpdatePersonalInfo>(() => _i65.UpdatePersonalInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i66.UpdateQualificationInfo>(() => _i66.UpdateQualificationInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i67.UpdateResumeImage>(() => _i67.UpdateResumeImage(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i68.UpdateWorkInfo>(() => _i68.UpdateWorkInfo(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i69.VerifyEmail>(() => _i69.VerifyEmail(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.factory<_i70.VerifyEmailBloc>(
      () => _i70.VerifyEmailBloc(verifyEmail: get<_i69.VerifyEmail>()));
  gh.lazySingleton<_i71.GetCountries>(() => _i71.GetCountries(
      repository: get<_i38.LocationInformationRepositoryProtocol>()));
  gh.factory<_i72.GetDownloadablePdfLink>(() => _i72.GetDownloadablePdfLink(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i73.GetFavouriteNews>(() =>
      _i73.GetFavouriteNews(repository: get<_i43.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i74.GetHomePageData>(() => _i74.GetHomePageData(
      repository: get<_i31.HomeReporisitory>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i75.GetLatestNews>(() => _i75.GetLatestNews(
      repository: get<_i43.NewsRepositoryProtocol>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i76.GetListOfCityFromPrefectures>(() =>
      _i76.GetListOfCityFromPrefectures(
          repository: get<_i38.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i77.GetListOfPaymentMethods>(() =>
      _i77.GetListOfPaymentMethods(
          networkInfo: get<_i9.NetworkInfo>(),
          repository: get<_i35.LoadBalanceRepositories>()));
  gh.lazySingleton<_i78.GetNewsForYou>(() => _i78.GetNewsForYou(
      repository: get<_i43.NewsRepositoryProtocol>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i79.GetNewsGenre>(
      () => _i79.GetNewsGenre(repository: get<_i43.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i80.GetNewsPreferences>(() =>
      _i80.GetNewsPreferences(repository: get<_i43.NewsRepositoryProtocol>()));
  gh.factory<_i81.GetPaymentMethodsBloc>(() => _i81.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i77.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i82.GetPrefectureCityFromPostalCode>(() =>
      _i82.GetPrefectureCityFromPostalCode(
          repository: get<_i38.LocationInformationRepositoryProtocol>()));
  gh.factory<_i83.GetResume>(() => _i83.GetResume(
      repository: get<_i51.ResumeRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.lazySingleton<_i84.HomePageDataBloc>(() =>
      _i84.HomePageDataBloc(getHomePageData: get<_i74.GetHomePageData>()));
  gh.lazySingleton<_i85.JapaneseMannerRepository>(() =>
      _i86.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i33.JapaneseMannersRemoteDataSource>(),
          logger: get<_i8.Logger>()));
  gh.lazySingleton<_i87.LatestNewsBloc>(
      () => _i87.LatestNewsBloc(getNews: get<_i75.GetLatestNews>()));
  gh.factory<_i88.LocationViaPostalCodeBloc>(() =>
      _i88.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i82.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i89.NewsBloc>(
      () => _i89.NewsBloc(getNews: get<_i78.GetNewsForYou>()));
  gh.factory<_i90.NewsGenreBloc>(
      () => _i90.NewsGenreBloc(getNewsGenre: get<_i79.GetNewsGenre>()));
  gh.factory<_i91.NewsPreferenceBloc>(() => _i91.NewsPreferenceBloc(
      getNewsPreferences: get<_i80.GetNewsPreferences>()));
  gh.factory<_i92.PasswordResetBloc>(() => _i92.PasswordResetBloc(
      resetPasswordUseCase: get<_i49.ResetPasswordUseCase>()));
  gh.lazySingleton<_i93.ResumeWatcherBloc>(
      () => _i93.ResumeWatcherBloc(getResume: get<_i83.GetResume>()));
  gh.factory<_i94.SignInFormBloc>(() => _i94.SignInFormBloc(
      signInWithEmailUsecase: get<_i54.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i53.SignInWithApple>(),
      signInWithFacebook: get<_i55.SignInWithFacebook>(),
      signInWithGoogle: get<_i56.SignInWithGoogle>()));
  gh.factory<_i95.SignUpFormBloc>(() => _i95.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i57.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i96.UpdateProfileBloc>(() => _i96.UpdateProfileBloc(
      updateKycInfo: get<_i63.UpdateKycInfo>(),
      updateResumeImage: get<_i67.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i76.GetListOfCityFromPrefectures>()));
  gh.factory<_i97.DownloadPdfBloc>(() => _i97.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i72.GetDownloadablePdfLink>()));
  gh.factory<_i98.FavouriteNewsBloc>(() =>
      _i98.FavouriteNewsBloc(getFavouriteNews: get<_i73.GetFavouriteNews>()));
  gh.factory<_i99.JapaneseMannerBloc>(() => _i99.JapaneseMannerBloc(
      getJapaneseManner: get<_i100.GetJapaneseManner>()));
  gh.factory<_i101.JapaneseMannerCategoriesBloc>(() =>
      _i101.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i102.GetJapaneseMannerCategories>()));
  gh.singleton<_i11.ConfigReader>(_i11.ConfigReaderImpl());
  gh.singleton<_i103.DBProvider>(_i103.DBProviderImpl());
  gh.singleton<_i42.NewsLocalProvider>(
      _i42.NewsLocalProviderImpl(provider: get<_i103.DBProvider>()));
  gh.singleton<_i46.GetPartnerServices>(_i46.GetPartnerServices(
      repository: get<_i13.PartnerServicesRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.singleton<_i48.GetPartnerServicesCategories>(
      _i48.GetPartnerServicesCategories(
          repository: get<_i13.PartnerServicesRepository>(),
          networkInfo: get<_i9.NetworkInfo>()));
  gh.singleton<_i100.GetJapaneseManner>(_i100.GetJapaneseManner(
      repository: get<_i85.JapaneseMannerRepository>(),
      networkInfo: get<_i9.NetworkInfo>()));
  gh.singleton<_i102.GetJapaneseMannerCategories>(
      _i102.GetJapaneseMannerCategories(
          repository: get<_i85.JapaneseMannerRepository>(),
          networkInfo: get<_i9.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i104.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i105.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i106.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i107.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i108.SharedPreferenceModule {}
