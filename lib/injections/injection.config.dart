// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../core/database/local_database_provider.dart' as _i109;
import '../core/database/news_provider.dart' as _i45;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/logger/logger.dart' as _i10;
import '../core/network/newtork_info.dart' as _i12;
import '../core/notification/push_notification_manager.dart' as _i17;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i19;
import '../features/alerts/data/repository/alert_repository.dart' as _i21;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i20;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i26;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i28;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i30;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i27;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i29;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i31;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i22;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i23;
import '../features/auth/data/repository/auth_repository.dart' as _i25;
import '../features/auth/domain/repositories/auth_repository.dart' as _i24;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i32;
import '../features/auth/domain/usecase/logout_user.dart' as _i43;
import '../features/auth/domain/usecase/reset_password.dart' as _i52;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i57;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i58;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i59;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i60;
import '../features/auth/domain/usecase/verify_email.dart' as _i72;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i98;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i100;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i101;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i73;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i33;
import '../features/home/data/repositories/home_repository.dart' as _i35;
import '../features/home/domain/repositories/home_repository.dart' as _i34;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i80;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i90;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i36;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i92;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i91;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i106;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i108;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i105;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i107;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i37;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i39;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i38;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i83;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i62;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i74;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i76;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i87;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i8;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i63;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i75;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i40;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i42;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i41;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i77;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i82;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i88;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i94;
import '../features/news/data/datasource/news_local_data_source.dart' as _i44;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i13;
import '../features/news/data/repository/news_repository.dart' as _i47;
import '../features/news/domain/repository/news_repository.dart' as _i46;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i79;
import '../features/news/domain/usecase/get_latest_news.dart' as _i81;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i84;
import '../features/news/domain/usecase/get_news_genre.dart' as _i85;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i86;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i104;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i93;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i95;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i96;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i97;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i14;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i16;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i15;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i49;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i51;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i48;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i50;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i102;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i53;
import '../features/resume/data/repository/resume_repository.dart' as _i55;
import '../features/resume/domain/repository/resume_repository.dart' as _i54;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i78;
import '../features/resume/domain/usecases/get_resume.dart' as _i89;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i64;
import '../features/resume/domain/usecases/update_address_info.dart' as _i65;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i66;
import '../features/resume/domain/usecases/update_other_info.dart' as _i67;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i68;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i69;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i70;
import '../features/resume/domain/usecases/update_work_info.dart' as _i71;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i103;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i99;
import '../features/splash/presentation/splash_bloc.dart' as _i61;
import '../utils/config_reader.dart' as _i11;
import 'injectable/data_connection_checker_injectable_module.dart' as _i113;
import 'injectable/flutter_secure_storage_module.dart' as _i111;
import 'injectable/google_login_injectable_module.dart' as _i112;
import 'injectable/http_client_injectable_module.dart' as _i110;
import 'injectable/shared_preference_module.dart'
    as _i114; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.EsewaFormCubit>(() => _i4.EsewaFormCubit());
  gh.lazySingleton<_i5.FileProvider>(() => _i5.FileProvider());
  gh.lazySingleton<_i6.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i8.ImePayFormCubit>(() => _i8.ImePayFormCubit());
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i10.Logger>(() => _i10.LoggerImpl(
      client: get<_i3.Client>(), config: get<_i11.ConfigReader>()));
  gh.lazySingleton<_i12.NetworkInfo>(() => _i12.NetworkInfoImpl(
      dataConnectionChecker: get<_i9.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.NewsRemoteDataSourceProtocol>(() =>
      _i13.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i14.PartnerServicesRemoteDataSource>(() =>
      _i14.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i15.PartnerServicesRepository>(() =>
      _i16.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i14.PartnerServicesRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i17.PushNotificationManager>(
      () => _i17.PushNotificationManager());
  await gh.factoryAsync<_i18.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i19.AlertRemoteDataSource>(() =>
      _i19.AlertRemoteDataSourceImpl(
          logger: get<_i10.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>()));
  gh.lazySingleton<_i20.AlertRepository>(() => _i21.AlertRepositoryImpl(
      dataSource: get<_i19.AlertRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i22.AuthLocalDataSource>(() => _i22.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i18.SharedPreferences>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i23.AuthRemoteDataSource>(() =>
      _i23.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
      remoteDataSource: get<_i23.AuthRemoteDataSource>(),
      localDataSource: get<_i22.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i26.GetAlerts>(() => _i26.GetAlerts(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i27.GetAlertsBloc>(
      () => _i27.GetAlertsBloc(getAlerts: get<_i26.GetAlerts>()));
  gh.lazySingleton<_i28.GetEarthquakes>(() => _i28.GetEarthquakes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i29.GetEarthquakesBloc>(() =>
      _i29.GetEarthquakesBloc(getEarthquakes: get<_i28.GetEarthquakes>()));
  gh.lazySingleton<_i30.GetVolcanoes>(() => _i30.GetVolcanoes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i31.GetVolcanoesBloc>(
      () => _i31.GetVolcanoesBloc(getVolcanoes: get<_i30.GetVolcanoes>()));
  gh.lazySingleton<_i32.GetWalletUser>(
      () => _i32.GetWalletUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i33.HomePageRemoteDataSource>(() =>
      _i33.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i34.HomeReporisitory>(() => _i35.HomeRepositoryImpl(
      remoteDataSource: get<_i33.HomePageRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i36.JapaneseMannersRemoteDataSource>(() =>
      _i36.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i37.LoadBalanceDataSource>(() =>
      _i37.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i38.LoadBalanceRepositories>(() =>
      _i39.LoadBalanceRepositoriesImpl(
          dataSource: get<_i37.LoadBalanceDataSource>()));
  gh.lazySingleton<_i40.LocationInformationLocalDataSourceProtocol>(() =>
      _i40.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i41.LocationInformationRepositoryProtocol>(() =>
      _i42.LocationInformationRepository(
          dataSource: get<_i40.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i43.LogoutUser>(
      () => _i43.LogoutUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i44.NewsLocalDataSourceProtocol>(() =>
      _i44.NewsLocalDataSource(
          localProvider: get<_i45.NewsLocalProvider>(),
          preferences: get<_i18.SharedPreferences>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i46.NewsRepositoryProtocol>(() => _i47.NewsRepository(
      remoteDataSource: get<_i13.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i44.NewsLocalDataSourceProtocol>(),
      logger: get<_i10.Logger>()));
  gh.factory<_i48.ParnterServicesBloc>(() => _i48.ParnterServicesBloc(
      getPartnerServices: get<_i49.GetPartnerServices>()));
  gh.factory<_i50.PartnerServiceCategoriesBloc>(() =>
      _i50.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i51.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i52.ResetPasswordUseCase>(() => _i52.ResetPasswordUseCase(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i53.ResumeRemoteDataSource>(() =>
      _i53.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i54.ResumeRepository>(() => _i55.ResumeRepositoryImpl(
      dataSource: get<_i53.ResumeRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i56.SignInWithApple>(() => _i56.SignInWithApple(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithEmailAndPassword>(() =>
      _i57.SignInWithEmailAndPassword(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i58.SignInWithFacebook>(() => _i58.SignInWithFacebook(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i59.SignInWithGoogle>(() => _i59.SignInWithGoogle(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i60.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i60.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i61.SplashBloc>(
      () => _i61.SplashBloc(getWalletUser: get<_i32.GetWalletUser>()));
  gh.lazySingleton<_i62.TopUpViaStripe>(() => _i62.TopUpViaStripe(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i38.LoadBalanceRepositories>()));
  gh.factory<_i63.TopupViaStripeBloc>(() =>
      _i63.TopupViaStripeBloc(topUpViaStripe: get<_i62.TopUpViaStripe>()));
  gh.factory<_i64.UpdateAcadamicInfo>(() => _i64.UpdateAcadamicInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i65.UpdateAddressInfo>(() => _i65.UpdateAddressInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i66.UpdateKycInfo>(() => _i66.UpdateKycInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i67.UpdateOtherInfo>(() => _i67.UpdateOtherInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i68.UpdatePersonalInfo>(() => _i68.UpdatePersonalInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i69.UpdateQualificationInfo>(() => _i69.UpdateQualificationInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i70.UpdateResumeImage>(() => _i70.UpdateResumeImage(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i71.UpdateWorkInfo>(() => _i71.UpdateWorkInfo(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i72.VerifyEmail>(() => _i72.VerifyEmail(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i73.VerifyEmailBloc>(
      () => _i73.VerifyEmailBloc(verifyEmail: get<_i72.VerifyEmail>()));
  gh.lazySingleton<_i74.VerifyEsewaTopup>(() => _i74.VerifyEsewaTopup(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i38.LoadBalanceRepositories>()));
  gh.factory<_i75.VerifyEsewaTopupBloc>(() => _i75.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i74.VerifyEsewaTopup>()));
  gh.lazySingleton<_i76.VerifyImePayTopup>(() => _i76.VerifyImePayTopup(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i38.LoadBalanceRepositories>()));
  gh.lazySingleton<_i77.GetCountries>(() => _i77.GetCountries(
      repository: get<_i41.LocationInformationRepositoryProtocol>()));
  gh.factory<_i78.GetDownloadablePdfLink>(() => _i78.GetDownloadablePdfLink(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i79.GetFavouriteNews>(() =>
      _i79.GetFavouriteNews(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i80.GetHomePageData>(() => _i80.GetHomePageData(
      repository: get<_i34.HomeReporisitory>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i81.GetLatestNews>(() => _i81.GetLatestNews(
      repository: get<_i46.NewsRepositoryProtocol>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i82.GetListOfCityFromPrefectures>(() =>
      _i82.GetListOfCityFromPrefectures(
          repository: get<_i41.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i83.GetListOfPaymentMethods>(() =>
      _i83.GetListOfPaymentMethods(
          networkInfo: get<_i12.NetworkInfo>(),
          repository: get<_i38.LoadBalanceRepositories>()));
  gh.lazySingleton<_i84.GetNewsForYou>(() => _i84.GetNewsForYou(
      repository: get<_i46.NewsRepositoryProtocol>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i85.GetNewsGenre>(
      () => _i85.GetNewsGenre(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i86.GetNewsPreferences>(() =>
      _i86.GetNewsPreferences(repository: get<_i46.NewsRepositoryProtocol>()));
  gh.factory<_i87.GetPaymentMethodsBloc>(() => _i87.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i83.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i88.GetPrefectureCityFromPostalCode>(() =>
      _i88.GetPrefectureCityFromPostalCode(
          repository: get<_i41.LocationInformationRepositoryProtocol>()));
  gh.factory<_i89.GetResume>(() => _i89.GetResume(
      repository: get<_i54.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i90.HomePageDataBloc>(() =>
      _i90.HomePageDataBloc(getHomePageData: get<_i80.GetHomePageData>()));
  gh.lazySingleton<_i91.JapaneseMannerRepository>(() =>
      _i92.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i36.JapaneseMannersRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i93.LatestNewsBloc>(
      () => _i93.LatestNewsBloc(getNews: get<_i81.GetLatestNews>()));
  gh.factory<_i94.LocationViaPostalCodeBloc>(() =>
      _i94.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i88.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i95.NewsBloc>(
      () => _i95.NewsBloc(getNews: get<_i84.GetNewsForYou>()));
  gh.factory<_i96.NewsGenreBloc>(
      () => _i96.NewsGenreBloc(getNewsGenre: get<_i85.GetNewsGenre>()));
  gh.factory<_i97.NewsPreferenceBloc>(() => _i97.NewsPreferenceBloc(
      getNewsPreferences: get<_i86.GetNewsPreferences>()));
  gh.factory<_i98.PasswordResetBloc>(() => _i98.PasswordResetBloc(
      resetPasswordUseCase: get<_i52.ResetPasswordUseCase>()));
  gh.lazySingleton<_i99.ResumeWatcherBloc>(
      () => _i99.ResumeWatcherBloc(getResume: get<_i89.GetResume>()));
  gh.factory<_i100.SignInFormBloc>(() => _i100.SignInFormBloc(
      signInWithEmailUsecase: get<_i57.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i56.SignInWithApple>(),
      signInWithFacebook: get<_i58.SignInWithFacebook>(),
      signInWithGoogle: get<_i59.SignInWithGoogle>()));
  gh.factory<_i101.SignUpFormBloc>(() => _i101.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i60.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i102.UpdateProfileBloc>(() => _i102.UpdateProfileBloc(
      updateKycInfo: get<_i66.UpdateKycInfo>(),
      updateResumeImage: get<_i70.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i82.GetListOfCityFromPrefectures>()));
  gh.factory<_i103.DownloadPdfBloc>(() => _i103.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i78.GetDownloadablePdfLink>()));
  gh.factory<_i104.FavouriteNewsBloc>(() =>
      _i104.FavouriteNewsBloc(getFavouriteNews: get<_i79.GetFavouriteNews>()));
  gh.factory<_i105.JapaneseMannerBloc>(() => _i105.JapaneseMannerBloc(
      getJapaneseManner: get<_i106.GetJapaneseManner>()));
  gh.factory<_i107.JapaneseMannerCategoriesBloc>(() =>
      _i107.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i108.GetJapaneseMannerCategories>()));
  gh.singleton<_i11.ConfigReader>(_i11.ConfigReaderImpl());
  gh.singleton<_i109.DBProvider>(_i109.DBProviderImpl());
  gh.singleton<_i45.NewsLocalProvider>(
      _i45.NewsLocalProviderImpl(provider: get<_i109.DBProvider>()));
  gh.singleton<_i49.GetPartnerServices>(_i49.GetPartnerServices(
      repository: get<_i15.PartnerServicesRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i51.GetPartnerServicesCategories>(
      _i51.GetPartnerServicesCategories(
          repository: get<_i15.PartnerServicesRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i106.GetJapaneseManner>(_i106.GetJapaneseManner(
      repository: get<_i91.JapaneseMannerRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i108.GetJapaneseMannerCategories>(
      _i108.GetJapaneseMannerCategories(
          repository: get<_i91.JapaneseMannerRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i110.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i111.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i112.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i113.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i114.SharedPreferenceModule {}
