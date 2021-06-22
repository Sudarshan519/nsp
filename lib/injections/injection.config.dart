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
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../core/database/local_database_provider.dart' as _i128;
import '../core/database/news_provider.dart' as _i43;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i11;
import '../core/network/newtork_info.dart' as _i13;
import '../core/notification/push_notification_manager.dart' as _i15;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i17;
import '../features/alerts/data/repository/alert_repository.dart' as _i19;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i18;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i24;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i26;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i28;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i25;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i27;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i29;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i20;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i21;
import '../features/auth/data/repository/auth_repository.dart' as _i23;
import '../features/auth/domain/repositories/auth_repository.dart' as _i22;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i30;
import '../features/auth/domain/usecase/logout_user.dart' as _i41;
import '../features/auth/domain/usecase/reset_password.dart' as _i50;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i54;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i57;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i58;
import '../features/auth/domain/usecase/verify_email.dart' as _i76;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i111;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i114;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i115;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i77;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i31;
import '../features/home/data/repositories/home_repository.dart' as _i33;
import '../features/home/domain/repositories/home_repository.dart' as _i32;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i85;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i97;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i34;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i99;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i98;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i124;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i126;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i123;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i125;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i35;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i37;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i36;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i88;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i60;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i78;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i80;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i92;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i81;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i61;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i79;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i38;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i40;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i39;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i82;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i87;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i93;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i101;
import '../features/news/data/datasource/news_local_data_source.dart' as _i42;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i14;
import '../features/news/data/repository/news_repository.dart' as _i45;
import '../features/news/domain/repository/news_repository.dart' as _i44;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i84;
import '../features/news/domain/usecase/get_latest_news.dart' as _i86;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i89;
import '../features/news/domain/usecase/get_news_genre.dart' as _i90;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i91;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i121;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i100;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i102;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i103;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i104;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i46;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i106;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i105;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i122;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i127;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i47;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i49;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i48;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i108;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i110;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i129;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i107;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i109;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i130;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i119;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i51;
import '../features/resume/data/repository/resume_repository.dart' as _i53;
import '../features/resume/domain/repository/resume_repository.dart' as _i52;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i83;
import '../features/resume/domain/usecases/get_resume.dart' as _i94;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i65;
import '../features/resume/domain/usecases/update_address_info.dart' as _i66;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i67;
import '../features/resume/domain/usecases/update_other_info.dart' as _i68;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i69;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i70;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i71;
import '../features/resume/domain/usecases/update_work_info.dart' as _i72;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i120;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i113;
import '../features/splash/presentation/splash_bloc.dart' as _i59;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i62;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i64;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i63;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i96;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i131;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i73;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i75;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i74;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i95;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i112;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i117;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i116;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i118;
import '../utils/config_reader.dart' as _i12;
import 'injectable/data_connection_checker_injectable_module.dart' as _i135;
import 'injectable/flutter_secure_storage_module.dart' as _i133;
import 'injectable/google_login_injectable_module.dart' as _i134;
import 'injectable/http_client_injectable_module.dart' as _i132;
import 'injectable/shared_preference_module.dart'
    as _i136; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i15.PushNotificationManager>(
      () => _i15.PushNotificationManager());
  await gh.factoryAsync<_i16.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i17.AlertRemoteDataSource>(() =>
      _i17.AlertRemoteDataSourceImpl(
          logger: get<_i11.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>()));
  gh.lazySingleton<_i18.AlertRepository>(() => _i19.AlertRepositoryImpl(
      dataSource: get<_i17.AlertRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i20.AuthLocalDataSource>(() => _i20.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i16.SharedPreferences>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i21.AuthRemoteDataSource>(() =>
      _i21.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i22.AuthRepository>(() => _i23.AuthRepositoryImpl(
      remoteDataSource: get<_i21.AuthRemoteDataSource>(),
      localDataSource: get<_i20.AuthLocalDataSource>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i24.GetAlerts>(() => _i24.GetAlerts(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i25.GetAlertsBloc>(
      () => _i25.GetAlertsBloc(getAlerts: get<_i24.GetAlerts>()));
  gh.lazySingleton<_i26.GetEarthquakes>(() => _i26.GetEarthquakes(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i27.GetEarthquakesBloc>(() =>
      _i27.GetEarthquakesBloc(getEarthquakes: get<_i26.GetEarthquakes>()));
  gh.lazySingleton<_i28.GetVolcanoes>(() => _i28.GetVolcanoes(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i29.GetVolcanoesBloc>(
      () => _i29.GetVolcanoesBloc(getVolcanoes: get<_i28.GetVolcanoes>()));
  gh.lazySingleton<_i30.GetWalletUser>(
      () => _i30.GetWalletUser(repository: get<_i22.AuthRepository>()));
  gh.lazySingleton<_i31.HomePageRemoteDataSource>(() =>
      _i31.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i32.HomeReporisitory>(() => _i33.HomeRepositoryImpl(
      remoteDataSource: get<_i31.HomePageRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i34.JapaneseMannersRemoteDataSource>(() =>
      _i34.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i35.LoadBalanceDataSource>(() =>
      _i35.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i36.LoadBalanceRepositories>(() =>
      _i37.LoadBalanceRepositoriesImpl(
          dataSource: get<_i35.LoadBalanceDataSource>()));
  gh.lazySingleton<_i38.LocationInformationLocalDataSourceProtocol>(() =>
      _i38.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i39.LocationInformationRepositoryProtocol>(() =>
      _i40.LocationInformationRepository(
          dataSource: get<_i38.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i41.LogoutUser>(
      () => _i41.LogoutUser(repository: get<_i22.AuthRepository>()));
  gh.lazySingleton<_i42.NewsLocalDataSourceProtocol>(() =>
      _i42.NewsLocalDataSource(
          localProvider: get<_i43.NewsLocalProvider>(),
          preferences: get<_i16.SharedPreferences>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i44.NewsRepositoryProtocol>(() => _i45.NewsRepository(
      remoteDataSource: get<_i14.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i42.NewsLocalDataSourceProtocol>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i46.NotificationsRemoteDataSource>(() =>
      _i46.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i47.PartnerServicesRemoteDataSource>(() =>
      _i47.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i20.AuthLocalDataSource>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i48.PartnerServicesRepository>(() =>
      _i49.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i47.PartnerServicesRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i50.ResetPasswordUseCase>(() => _i50.ResetPasswordUseCase(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i51.ResumeRemoteDataSource>(() =>
      _i51.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i52.ResumeRepository>(() => _i53.ResumeRepositoryImpl(
      dataSource: get<_i51.ResumeRemoteDataSource>(),
      logger: get<_i11.Logger>()));
  gh.lazySingleton<_i54.SignInWithApple>(() => _i54.SignInWithApple(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i55.SignInWithEmailAndPassword>(() =>
      _i55.SignInWithEmailAndPassword(
          repository: get<_i22.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithFacebook>(() => _i56.SignInWithFacebook(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithGoogle>(() => _i57.SignInWithGoogle(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i58.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i58.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i22.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i59.SplashBloc>(
      () => _i59.SplashBloc(getWalletUser: get<_i30.GetWalletUser>()));
  gh.lazySingleton<_i60.TopUpViaStripe>(() => _i60.TopUpViaStripe(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i36.LoadBalanceRepositories>()));
  gh.factory<_i61.TopupViaStripeBloc>(() =>
      _i61.TopupViaStripeBloc(topUpViaStripe: get<_i60.TopUpViaStripe>()));
  gh.lazySingleton<_i62.TransactionRemoteDataSource>(() =>
      _i62.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i63.TransactionRepository>(() =>
      _i64.TransactionRepositoryImpl(
          dataSource: get<_i62.TransactionRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.factory<_i65.UpdateAcadamicInfo>(() => _i65.UpdateAcadamicInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i66.UpdateAddressInfo>(() => _i66.UpdateAddressInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i67.UpdateKycInfo>(() => _i67.UpdateKycInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i68.UpdateOtherInfo>(() => _i68.UpdateOtherInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i69.UpdatePersonalInfo>(() => _i69.UpdatePersonalInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i70.UpdateQualificationInfo>(() => _i70.UpdateQualificationInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i71.UpdateResumeImage>(() => _i71.UpdateResumeImage(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i72.UpdateWorkInfo>(() => _i72.UpdateWorkInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i73.UtilityPaymentDataSource>(() =>
      _i73.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i74.UtilityPaymentRepository>(() =>
      _i75.UtilityPaymentRepositoryImpl(
          dataSource: get<_i73.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i76.VerifyEmail>(() => _i76.VerifyEmail(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i77.VerifyEmailBloc>(
      () => _i77.VerifyEmailBloc(verifyEmail: get<_i76.VerifyEmail>()));
  gh.lazySingleton<_i78.VerifyEsewaTopup>(() => _i78.VerifyEsewaTopup(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i36.LoadBalanceRepositories>()));
  gh.factory<_i79.VerifyEsewaTopupBloc>(() => _i79.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i78.VerifyEsewaTopup>()));
  gh.lazySingleton<_i80.VerifyImePayTopup>(() => _i80.VerifyImePayTopup(
      networkInfo: get<_i13.NetworkInfo>(),
      repository: get<_i36.LoadBalanceRepositories>()));
  gh.factory<_i81.VerifyImePayTopupBloc>(() => _i81.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i80.VerifyImePayTopup>()));
  gh.lazySingleton<_i82.GetCountries>(() => _i82.GetCountries(
      repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.factory<_i83.GetDownloadablePdfLink>(() => _i83.GetDownloadablePdfLink(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i84.GetFavouriteNews>(() =>
      _i84.GetFavouriteNews(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i85.GetHomePageData>(() => _i85.GetHomePageData(
      repository: get<_i32.HomeReporisitory>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i86.GetLatestNews>(() => _i86.GetLatestNews(
      repository: get<_i44.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i87.GetListOfCityFromPrefectures>(() =>
      _i87.GetListOfCityFromPrefectures(
          repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i88.GetListOfPaymentMethods>(() =>
      _i88.GetListOfPaymentMethods(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i36.LoadBalanceRepositories>()));
  gh.lazySingleton<_i89.GetNewsForYou>(() => _i89.GetNewsForYou(
      repository: get<_i44.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i90.GetNewsGenre>(
      () => _i90.GetNewsGenre(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i91.GetNewsPreferences>(() =>
      _i91.GetNewsPreferences(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.factory<_i92.GetPaymentMethodsBloc>(() => _i92.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i88.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i93.GetPrefectureCityFromPostalCode>(() =>
      _i93.GetPrefectureCityFromPostalCode(
          repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.factory<_i94.GetResume>(() => _i94.GetResume(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i95.GetSubscriptionDetailForPartnerService>(() =>
      _i95.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i74.UtilityPaymentRepository>()));
  gh.lazySingleton<_i96.GetTransactions>(() => _i96.GetTransactions(
      repository: get<_i63.TransactionRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i97.HomePageDataBloc>(() =>
      _i97.HomePageDataBloc(getHomePageData: get<_i85.GetHomePageData>()));
  gh.lazySingleton<_i98.JapaneseMannerRepository>(() =>
      _i99.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i34.JapaneseMannersRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.lazySingleton<_i100.LatestNewsBloc>(
      () => _i100.LatestNewsBloc(getNews: get<_i86.GetLatestNews>()));
  gh.factory<_i101.LocationViaPostalCodeBloc>(() =>
      _i101.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i93.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i102.NewsBloc>(
      () => _i102.NewsBloc(getNews: get<_i89.GetNewsForYou>()));
  gh.factory<_i103.NewsGenreBloc>(
      () => _i103.NewsGenreBloc(getNewsGenre: get<_i90.GetNewsGenre>()));
  gh.factory<_i104.NewsPreferenceBloc>(() => _i104.NewsPreferenceBloc(
      getNewsPreferences: get<_i91.GetNewsPreferences>()));
  gh.lazySingleton<_i105.NotificationRepository>(() =>
      _i106.NotificationRepositoryImpl(
          dataSource: get<_i46.NotificationsRemoteDataSource>(),
          logger: get<_i11.Logger>()));
  gh.factory<_i107.ParnterServicesBloc>(() => _i107.ParnterServicesBloc(
      getPartnerServices: get<_i108.GetPartnerServices>()));
  gh.factory<_i109.PartnerServiceCategoriesBloc>(() =>
      _i109.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i110.GetPartnerServicesCategories>()));
  gh.factory<_i111.PasswordResetBloc>(() => _i111.PasswordResetBloc(
      resetPasswordUseCase: get<_i50.ResetPasswordUseCase>()));
  gh.lazySingleton<_i112.PurchaseSubscriptionFromPartnerService>(() =>
      _i112.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i74.UtilityPaymentRepository>()));
  gh.lazySingleton<_i113.ResumeWatcherBloc>(
      () => _i113.ResumeWatcherBloc(getResume: get<_i94.GetResume>()));
  gh.factory<_i114.SignInFormBloc>(() => _i114.SignInFormBloc(
      signInWithEmailUsecase: get<_i55.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i54.SignInWithApple>(),
      signInWithFacebook: get<_i56.SignInWithFacebook>(),
      signInWithGoogle: get<_i57.SignInWithGoogle>()));
  gh.factory<_i115.SignUpFormBloc>(() => _i115.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i58.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i116.SubscriptionForPartnerServiceBloc>(() =>
      _i116.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i95.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i112.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i117.TopUpBalanceForMobile>(() =>
      _i117.TopUpBalanceForMobile(
          networkInfo: get<_i13.NetworkInfo>(),
          repository: get<_i74.UtilityPaymentRepository>()));
  gh.factory<_i118.TopUpBalanceInMobileBloc>(() =>
      _i118.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i117.TopUpBalanceForMobile>()));
  gh.factory<_i119.UpdateProfileBloc>(() => _i119.UpdateProfileBloc(
      updateKycInfo: get<_i67.UpdateKycInfo>(),
      updateResumeImage: get<_i71.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i87.GetListOfCityFromPrefectures>()));
  gh.factory<_i120.DownloadPdfBloc>(() => _i120.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i83.GetDownloadablePdfLink>()));
  gh.factory<_i121.FavouriteNewsBloc>(() =>
      _i121.FavouriteNewsBloc(getFavouriteNews: get<_i84.GetFavouriteNews>()));
  gh.lazySingleton<_i122.GetNotifications>(() => _i122.GetNotifications(
      repository: get<_i105.NotificationRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i123.JapaneseMannerBloc>(() => _i123.JapaneseMannerBloc(
      getJapaneseManner: get<_i124.GetJapaneseManner>()));
  gh.factory<_i125.JapaneseMannerCategoriesBloc>(() =>
      _i125.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i126.GetJapaneseMannerCategories>()));
  gh.factory<_i127.NotificationsBloc>(() =>
      _i127.NotificationsBloc(getNotifications: get<_i122.GetNotifications>()));
  gh.singleton<_i12.ConfigReader>(_i12.ConfigReaderImpl());
  gh.singleton<_i128.DBProvider>(_i128.DBProviderImpl());
  gh.singleton<_i43.NewsLocalProvider>(
      _i43.NewsLocalProviderImpl(provider: get<_i128.DBProvider>()));
  gh.singleton<_i129.PurchasePackage>(_i129.PurchasePackage(
      repository: get<_i48.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i130.PurchasePackageBloc>(
      _i130.PurchasePackageBloc(purchasePackage: get<_i129.PurchasePackage>()));
  gh.singleton<_i108.GetPartnerServices>(_i108.GetPartnerServices(
      repository: get<_i48.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i110.GetPartnerServicesCategories>(
      _i110.GetPartnerServicesCategories(
          repository: get<_i48.PartnerServicesRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i131.TransactionBloc>(
      _i131.TransactionBloc(getTransaction: get<_i96.GetTransactions>()));
  gh.singleton<_i124.GetJapaneseManner>(_i124.GetJapaneseManner(
      repository: get<_i98.JapaneseMannerRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i126.GetJapaneseMannerCategories>(
      _i126.GetJapaneseMannerCategories(
          repository: get<_i98.JapaneseMannerRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i132.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i133.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i134.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i135.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i136.SharedPreferenceModule {}
