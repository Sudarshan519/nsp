// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/database/local_database_provider.dart' as _i127;
import '../core/database/news_provider.dart' as _i46;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i11;
import '../core/network/newtork_info.dart' as _i13;
import '../core/notification/push_notification_manager.dart' as _i18;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i20;
import '../features/alerts/data/repository/alert_repository.dart' as _i22;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i21;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i27;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i29;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i31;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i28;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i30;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i32;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i23;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i24;
import '../features/auth/data/repository/auth_repository.dart' as _i26;
import '../features/auth/domain/repositories/auth_repository.dart' as _i25;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i33;
import '../features/auth/domain/usecase/logout_user.dart' as _i44;
import '../features/auth/domain/usecase/reset_password.dart' as _i54;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i58;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i59;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i60;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i61;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i62;
import '../features/auth/domain/usecase/verify_email.dart' as _i80;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i110;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i112;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i113;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i81;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i34;
import '../features/home/data/repositories/home_repository.dart' as _i36;
import '../features/home/domain/repositories/home_repository.dart' as _i35;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i88;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i100;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i37;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i102;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i101;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i123;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i125;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i122;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i124;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i38;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i40;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i39;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i91;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i64;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i82;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i84;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i95;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i65;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i83;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i41;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i43;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i42;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i85;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i90;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i96;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i104;
import '../features/news/data/datasource/news_local_data_source.dart' as _i45;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i14;
import '../features/news/data/repository/news_repository.dart' as _i48;
import '../features/news/domain/repository/news_repository.dart' as _i47;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i87;
import '../features/news/domain/usecase/get_latest_news.dart' as _i89;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i92;
import '../features/news/domain/usecase/get_news_genre.dart' as _i93;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i94;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i120;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i103;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i105;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i106;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i107;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i49;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i109;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i108;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i121;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i126;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i15;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i17;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i16;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i51;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i53;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i128;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i50;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i52;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i129;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i118;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i55;
import '../features/resume/data/repository/resume_repository.dart' as _i57;
import '../features/resume/domain/repository/resume_repository.dart' as _i56;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i86;
import '../features/resume/domain/usecases/get_resume.dart' as _i97;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i69;
import '../features/resume/domain/usecases/update_address_info.dart' as _i70;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i71;
import '../features/resume/domain/usecases/update_other_info.dart' as _i72;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i73;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i74;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i75;
import '../features/resume/domain/usecases/update_work_info.dart' as _i76;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i119;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i111;
import '../features/splash/presentation/splash_bloc.dart' as _i63;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i66;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i68;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i67;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i99;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i117;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i77;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i79;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i78;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i98;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i115;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i114;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i116;
import '../utils/config_reader.dart' as _i12;
import 'injectable/data_connection_checker_injectable_module.dart' as _i133;
import 'injectable/flutter_secure_storage_module.dart' as _i131;
import 'injectable/google_login_injectable_module.dart' as _i132;
import 'injectable/http_client_injectable_module.dart' as _i130;
import 'injectable/shared_preference_module.dart'
    as _i134; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.GeoLocationManager>(() => _i7.GeoLocationManager());
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i9.ImePayFormCubit>(() => _i9.ImePayFormCubit());
  gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i11.Logger>(() => _i11.LoggerImpl(
      client: get<_i3.Client>(), config: get<_i12.ConfigReader>()));
  gh.lazySingleton<_i13.NetworkInfo>(() => _i13.NetworkInfoImpl(
      dataConnectionChecker: get<_i10.InternetConnectionChecker>()));
  gh.lazySingleton<_i14.NewsRemoteDataSourceProtocol>(() =>
      _i14.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i15.PartnerServicesRemoteDataSource>(() =>
      _i15.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i16.PartnerServicesRepository>(() =>
      _i17.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i15.PartnerServicesRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i18.PushNotificationManager>(
      () => _i18.PushNotificationManager());
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i20.AlertRemoteDataSource>(() =>
      _i20.AlertRemoteDataSourceImpl(
          logger: get<_i11.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>()));
  gh.lazySingleton<_i21.AlertRepository>(() => _i22.AlertRepositoryImpl(
      dataSource: get<_i20.AlertRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i19.SharedPreferences>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i24.AuthRemoteDataSource>(() =>
      _i24.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i25.AuthRepository>(() => _i26.AuthRepositoryImpl(
      remoteDataSource: get<_i24.AuthRemoteDataSource>(),
      localDataSource: get<_i23.AuthLocalDataSource>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i27.GetAlerts>(() => _i27.GetAlerts(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i28.GetAlertsBloc>(
      () => _i28.GetAlertsBloc(getAlerts: get<_i27.GetAlerts>()));
  gh.lazySingleton<_i29.GetEarthquakes>(() => _i29.GetEarthquakes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i30.GetEarthquakesBloc>(() =>
      _i30.GetEarthquakesBloc(getEarthquakes: get<_i29.GetEarthquakes>()));
  gh.lazySingleton<_i31.GetVolcanoes>(() => _i31.GetVolcanoes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i32.GetVolcanoesBloc>(
      () => _i32.GetVolcanoesBloc(getVolcanoes: get<_i31.GetVolcanoes>()));
  gh.lazySingleton<_i33.GetWalletUser>(
      () => _i33.GetWalletUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i34.HomePageRemoteDataSource>(() =>
      _i34.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i35.HomeReporisitory>(() => _i36.HomeRepositoryImpl(
      remoteDataSource: get<_i34.HomePageRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i37.JapaneseMannersRemoteDataSource>(() =>
      _i37.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i38.LoadBalanceDataSource>(() =>
      _i38.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i39.LoadBalanceRepositories>(() =>
      _i40.LoadBalanceRepositoriesImpl(
          dataSource: get<_i38.LoadBalanceDataSource>()));
  gh.lazySingleton<_i41.LocationInformationLocalDataSourceProtocol>(() =>
      _i41.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i42.LocationInformationRepositoryProtocol>(() =>
      _i43.LocationInformationRepository(
          dataSource: get<_i41.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i44.LogoutUser>(
      () => _i44.LogoutUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i45.NewsLocalDataSourceProtocol>(() =>
      _i45.NewsLocalDataSource(
          localProvider: get<_i46.NewsLocalProvider>(),
          preferences: get<_i19.SharedPreferences>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i47.NewsRepositoryProtocol>(() => _i48.NewsRepository(
      remoteDataSource: get<_i14.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i45.NewsLocalDataSourceProtocol>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i49.NotificationsRemoteDataSource>(() =>
      _i49.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.factory<_i50.ParnterServicesBloc>(() => _i50.ParnterServicesBloc(
      getPartnerServices: get<_i51.GetPartnerServices>()));
  gh.factory<_i52.PartnerServiceCategoriesBloc>(() =>
      _i52.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i53.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i54.ResetPasswordUseCase>(() => _i54.ResetPasswordUseCase(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i55.ResumeRemoteDataSource>(() =>
      _i55.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i56.ResumeRepository>(() => _i57.ResumeRepositoryImpl(
      dataSource: get<_i55.ResumeRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i58.SignInWithApple>(() => _i58.SignInWithApple(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i59.SignInWithEmailAndPassword>(() =>
      _i59.SignInWithEmailAndPassword(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i60.SignInWithFacebook>(() => _i60.SignInWithFacebook(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i61.SignInWithGoogle>(() => _i61.SignInWithGoogle(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i62.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i62.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i63.SplashBloc>(
      () => _i63.SplashBloc(getWalletUser: get<_i33.GetWalletUser>()));
  gh.lazySingleton<_i64.TopUpViaStripe>(() => _i64.TopUpViaStripe(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i39.LoadBalanceRepositories>()));
  gh.factory<_i65.TopupViaStripeBloc>(() =>
      _i65.TopupViaStripeBloc(topUpViaStripe: get<_i64.TopUpViaStripe>()));
  gh.lazySingleton<_i66.TransactionRemoteDataSource>(() =>
      _i66.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i67.TransactionRepository>(() =>
      _i68.TransactionRepositoryImpl(
          dataSource: get<_i66.TransactionRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.factory<_i69.UpdateAcadamicInfo>(() => _i69.UpdateAcadamicInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i70.UpdateAddressInfo>(() => _i70.UpdateAddressInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i71.UpdateKycInfo>(() => _i71.UpdateKycInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i72.UpdateOtherInfo>(() => _i72.UpdateOtherInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i73.UpdatePersonalInfo>(() => _i73.UpdatePersonalInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i74.UpdateQualificationInfo>(() => _i74.UpdateQualificationInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i75.UpdateResumeImage>(() => _i75.UpdateResumeImage(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i76.UpdateWorkInfo>(() => _i76.UpdateWorkInfo(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i77.UtilityPaymentDataSource>(() =>
      _i77.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i78.UtilityPaymentRepository>(() =>
      _i79.UtilityPaymentRepositoryImpl(
          dataSource: get<_i77.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i80.VerifyEmail>(() => _i80.VerifyEmail(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i81.VerifyEmailBloc>(
      () => _i81.VerifyEmailBloc(verifyEmail: get<_i80.VerifyEmail>()));
  gh.lazySingleton<_i82.VerifyEsewaTopup>(() => _i82.VerifyEsewaTopup(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i39.LoadBalanceRepositories>()));
  gh.factory<_i83.VerifyEsewaTopupBloc>(() => _i83.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i82.VerifyEsewaTopup>()));
  gh.lazySingleton<_i84.VerifyImePayTopup>(() => _i84.VerifyImePayTopup(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i39.LoadBalanceRepositories>()));
  gh.lazySingleton<_i85.GetCountries>(() => _i85.GetCountries(
      repository: get<_i42.LocationInformationRepositoryProtocol>()));
  gh.factory<_i86.GetDownloadablePdfLink>(() => _i86.GetDownloadablePdfLink(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i87.GetFavouriteNews>(() =>
      _i87.GetFavouriteNews(repository: get<_i47.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i88.GetHomePageData>(() => _i88.GetHomePageData(
      repository: get<_i35.HomeReporisitory>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i89.GetLatestNews>(() => _i89.GetLatestNews(
      repository: get<_i47.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i90.GetListOfCityFromPrefectures>(() =>
      _i90.GetListOfCityFromPrefectures(
          repository: get<_i42.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i91.GetListOfPaymentMethods>(() =>
      _i91.GetListOfPaymentMethods(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i39.LoadBalanceRepositories>()));
  gh.lazySingleton<_i92.GetNewsForYou>(() => _i92.GetNewsForYou(
      repository: get<_i47.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i93.GetNewsGenre>(
      () => _i93.GetNewsGenre(repository: get<_i47.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i94.GetNewsPreferences>(() =>
      _i94.GetNewsPreferences(repository: get<_i47.NewsRepositoryProtocol>()));
  gh.factory<_i95.GetPaymentMethodsBloc>(() => _i95.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i91.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i96.GetPrefectureCityFromPostalCode>(() =>
      _i96.GetPrefectureCityFromPostalCode(
          repository: get<_i42.LocationInformationRepositoryProtocol>()));
  gh.factory<_i97.GetResume>(() => _i97.GetResume(
      repository: get<_i56.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i98.GetSubscriptionDetailForPartnerService>(() =>
      _i98.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i78.UtilityPaymentRepository>()));
  gh.lazySingleton<_i99.GetTransactions>(() => _i99.GetTransactions(
      repository: get<_i67.TransactionRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i100.HomePageDataBloc>(() =>
      _i100.HomePageDataBloc(getHomePageData: get<_i88.GetHomePageData>()));
  gh.lazySingleton<_i101.JapaneseMannerRepository>(() =>
      _i102.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i37.JapaneseMannersRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i103.LatestNewsBloc>(
      () => _i103.LatestNewsBloc(getNews: get<_i89.GetLatestNews>()));
  gh.factory<_i104.LocationViaPostalCodeBloc>(() =>
      _i104.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i96.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i105.NewsBloc>(
      () => _i105.NewsBloc(getNews: get<_i92.GetNewsForYou>()));
  gh.factory<_i106.NewsGenreBloc>(
      () => _i106.NewsGenreBloc(getNewsGenre: get<_i93.GetNewsGenre>()));
  gh.factory<_i107.NewsPreferenceBloc>(() => _i107.NewsPreferenceBloc(
      getNewsPreferences: get<_i94.GetNewsPreferences>()));
  gh.lazySingleton<_i108.NotificationRepository>(() =>
      _i109.NotificationRepositoryImpl(
          dataSource: get<_i49.NotificationsRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.factory<_i110.PasswordResetBloc>(() => _i110.PasswordResetBloc(
      resetPasswordUseCase: get<_i54.ResetPasswordUseCase>()));
  gh.lazySingleton<_i111.ResumeWatcherBloc>(
      () => _i111.ResumeWatcherBloc(getResume: get<_i97.GetResume>()));
  gh.factory<_i112.SignInFormBloc>(() => _i112.SignInFormBloc(
      signInWithEmailUsecase: get<_i59.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i58.SignInWithApple>(),
      signInWithFacebook: get<_i60.SignInWithFacebook>(),
      signInWithGoogle: get<_i61.SignInWithGoogle>()));
  gh.factory<_i113.SignUpFormBloc>(() => _i113.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i62.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i114.SubscriptionForPartnerServiceBloc>(() =>
      _i114.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i98.GetSubscriptionDetailForPartnerService>()));
  gh.lazySingleton<_i115.TopUpBalanceForMobile>(() =>
      _i115.TopUpBalanceForMobile(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i78.UtilityPaymentRepository>()));
  gh.factory<_i116.TopUpBalanceInMobileBloc>(() =>
      _i116.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i115.TopUpBalanceForMobile>()));
  gh.factory<_i117.TransactionBloc>(
      () => _i117.TransactionBloc(getTransaction: get<_i99.GetTransactions>()));
  gh.factory<_i118.UpdateProfileBloc>(() => _i118.UpdateProfileBloc(
      updateKycInfo: get<_i71.UpdateKycInfo>(),
      updateResumeImage: get<_i75.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i90.GetListOfCityFromPrefectures>()));
  gh.factory<_i119.DownloadPdfBloc>(() => _i119.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i86.GetDownloadablePdfLink>()));
  gh.factory<_i120.FavouriteNewsBloc>(() =>
      _i120.FavouriteNewsBloc(getFavouriteNews: get<_i87.GetFavouriteNews>()));
  gh.lazySingleton<_i121.GetNotifications>(() => _i121.GetNotifications(
      repository: get<_i108.NotificationRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i122.JapaneseMannerBloc>(() => _i122.JapaneseMannerBloc(
      getJapaneseManner: get<_i123.GetJapaneseManner>()));
  gh.factory<_i124.JapaneseMannerCategoriesBloc>(() =>
      _i124.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i125.GetJapaneseMannerCategories>()));
  gh.factory<_i126.NotificationsBloc>(() =>
      _i126.NotificationsBloc(getNotifications: get<_i121.GetNotifications>()));
  gh.singleton<_i12.ConfigReader>(_i12.ConfigReaderImpl());
  gh.singleton<_i127.DBProvider>(_i127.DBProviderImpl());
  gh.singleton<_i46.NewsLocalProvider>(
      _i46.NewsLocalProviderImpl(provider: get<_i127.DBProvider>()));
  gh.singleton<_i128.PurchasePackage>(_i128.PurchasePackage(
      repository: get<_i16.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i129.PurchasePackageBloc>(
      _i129.PurchasePackageBloc(purchasePackage: get<_i128.PurchasePackage>()));
  gh.singleton<_i51.GetPartnerServices>(_i51.GetPartnerServices(
      repository: get<_i16.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i53.GetPartnerServicesCategories>(
      _i53.GetPartnerServicesCategories(
          repository: get<_i16.PartnerServicesRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i123.GetJapaneseManner>(_i123.GetJapaneseManner(
      repository: get<_i101.JapaneseMannerRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i125.GetJapaneseMannerCategories>(
      _i125.GetJapaneseMannerCategories(
          repository: get<_i101.JapaneseMannerRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i130.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i131.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i132.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i133.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i134.SharedPreferenceModule {}
