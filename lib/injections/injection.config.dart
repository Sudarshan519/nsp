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
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../core/database/local_database_provider.dart' as _i136;
import '../core/database/news_provider.dart' as _i49;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i16;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i18;
import '../features/alerts/data/repository/alert_repository.dart' as _i20;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i19;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i28;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i32;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i34;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i29;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i33;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i35;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i21;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i22;
import '../features/auth/data/repository/auth_repository.dart' as _i24;
import '../features/auth/domain/repositories/auth_repository.dart' as _i23;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i36;
import '../features/auth/domain/usecase/logout_user.dart' as _i47;
import '../features/auth/domain/usecase/reset_password.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i60;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i61;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i62;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i63;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i64;
import '../features/auth/domain/usecase/verify_email.dart' as _i82;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i119;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i122;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i123;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i83;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i25;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i27;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i26;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i30;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i31;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i37;
import '../features/home/data/repositories/home_repository.dart' as _i39;
import '../features/home/domain/repositories/home_repository.dart' as _i38;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i92;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i105;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i40;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i107;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i106;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i132;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i134;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i131;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i133;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i41;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i43;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i42;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i96;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i66;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i84;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i86;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i87;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i85;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i100;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i88;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i67;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i44;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i46;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i45;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i89;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i95;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i101;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i109;
import '../features/news/data/datasource/news_local_data_source.dart' as _i48;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i51;
import '../features/news/domain/repository/news_repository.dart' as _i50;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i91;
import '../features/news/domain/usecase/get_latest_news.dart' as _i94;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i97;
import '../features/news/domain/usecase/get_news_genre.dart' as _i98;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i99;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i129;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i108;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i110;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i111;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i112;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i52;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i114;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i113;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i130;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i135;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i53;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i55;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i54;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i116;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i118;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i137;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i115;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i117;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i138;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i127;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i57;
import '../features/resume/data/repository/resume_repository.dart' as _i59;
import '../features/resume/domain/repository/resume_repository.dart' as _i58;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i90;
import '../features/resume/domain/usecases/get_resume.dart' as _i102;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i71;
import '../features/resume/domain/usecases/update_address_info.dart' as _i72;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i73;
import '../features/resume/domain/usecases/update_other_info.dart' as _i74;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i75;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i76;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i77;
import '../features/resume/domain/usecases/update_work_info.dart' as _i78;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i128;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i121;
import '../features/splash/presentation/splash_bloc.dart' as _i65;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i68;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i70;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i69;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i93;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i104;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i139;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i140;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i79;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i81;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i80;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i103;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i120;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i125;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i124;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i126;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i144;
import 'injectable/flutter_secure_storage_module.dart' as _i142;
import 'injectable/google_login_injectable_module.dart' as _i143;
import 'injectable/http_client_injectable_module.dart' as _i141;
import 'injectable/shared_preference_module.dart'
    as _i145; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i11.KhaltiFormCubit>(() => _i11.KhaltiFormCubit());
  gh.lazySingleton<_i12.Logger>(() => _i12.LoggerImpl(
      client: get<_i3.Client>(), config: get<_i13.ConfigReader>()));
  gh.lazySingleton<_i14.NetworkInfo>(() => _i14.NetworkInfoImpl(
      dataConnectionChecker: get<_i10.InternetConnectionChecker>()));
  gh.lazySingleton<_i15.NewsRemoteDataSourceProtocol>(() =>
      _i15.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i16.PushNotificationManager>(
      () => _i16.PushNotificationManager());
  await gh.factoryAsync<_i17.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i18.AlertRemoteDataSource>(() =>
      _i18.AlertRemoteDataSourceImpl(
          logger: get<_i12.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>()));
  gh.lazySingleton<_i19.AlertRepository>(() => _i20.AlertRepositoryImpl(
      dataSource: get<_i18.AlertRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i21.AuthLocalDataSource>(() => _i21.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i17.SharedPreferences>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i22.AuthRemoteDataSource>(() =>
      _i22.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i23.AuthRepository>(() => _i24.AuthRepositoryImpl(
      remoteDataSource: get<_i22.AuthRemoteDataSource>(),
      localDataSource: get<_i21.AuthLocalDataSource>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i25.CouponRemoteDataSource>(() =>
      _i25.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i26.CouponRepository>(() => _i27.CouponRepositoryImpl(
      dataSource: get<_i25.CouponRemoteDataSource>()));
  gh.lazySingleton<_i28.GetAlerts>(() => _i28.GetAlerts(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i29.GetAlertsBloc>(
      () => _i29.GetAlertsBloc(getAlerts: get<_i28.GetAlerts>()));
  gh.lazySingleton<_i30.GetCouponList>(() => _i30.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i26.CouponRepository>()));
  gh.factory<_i31.GetCouponListBloc>(
      () => _i31.GetCouponListBloc(getCouponList: get<_i30.GetCouponList>()));
  gh.lazySingleton<_i32.GetEarthquakes>(() => _i32.GetEarthquakes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i33.GetEarthquakesBloc>(() =>
      _i33.GetEarthquakesBloc(getEarthquakes: get<_i32.GetEarthquakes>()));
  gh.lazySingleton<_i34.GetVolcanoes>(() => _i34.GetVolcanoes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i35.GetVolcanoesBloc>(
      () => _i35.GetVolcanoesBloc(getVolcanoes: get<_i34.GetVolcanoes>()));
  gh.lazySingleton<_i36.GetWalletUser>(
      () => _i36.GetWalletUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i37.HomePageRemoteDataSource>(() =>
      _i37.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i38.HomeReporisitory>(() => _i39.HomeRepositoryImpl(
      remoteDataSource: get<_i37.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i40.JapaneseMannersRemoteDataSource>(() =>
      _i40.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i41.LoadBalanceDataSource>(() =>
      _i41.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i42.LoadBalanceRepositories>(() =>
      _i43.LoadBalanceRepositoriesImpl(
          dataSource: get<_i41.LoadBalanceDataSource>()));
  gh.lazySingleton<_i44.LocationInformationLocalDataSourceProtocol>(() =>
      _i44.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i45.LocationInformationRepositoryProtocol>(() =>
      _i46.LocationInformationRepository(
          dataSource: get<_i44.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i47.LogoutUser>(
      () => _i47.LogoutUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i48.NewsLocalDataSourceProtocol>(() =>
      _i48.NewsLocalDataSource(
          localProvider: get<_i49.NewsLocalProvider>(),
          preferences: get<_i17.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i50.NewsRepositoryProtocol>(() => _i51.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i48.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i52.NotificationsRemoteDataSource>(() =>
      _i52.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i53.PartnerServicesRemoteDataSource>(() =>
      _i53.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i21.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i54.PartnerServicesRepository>(() =>
      _i55.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i53.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i56.ResetPasswordUseCase>(() => _i56.ResetPasswordUseCase(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i57.ResumeRemoteDataSource>(() =>
      _i57.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i58.ResumeRepository>(() => _i59.ResumeRepositoryImpl(
      dataSource: get<_i57.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i60.SignInWithApple>(() => _i60.SignInWithApple(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i61.SignInWithEmailAndPassword>(() =>
      _i61.SignInWithEmailAndPassword(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i62.SignInWithFacebook>(() => _i62.SignInWithFacebook(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i63.SignInWithGoogle>(() => _i63.SignInWithGoogle(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i64.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i64.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i65.SplashBloc>(
      () => _i65.SplashBloc(getWalletUser: get<_i36.GetWalletUser>()));
  gh.lazySingleton<_i66.TopUpViaStripe>(() => _i66.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i42.LoadBalanceRepositories>()));
  gh.factory<_i67.TopupViaStripeBloc>(() =>
      _i67.TopupViaStripeBloc(topUpViaStripe: get<_i66.TopUpViaStripe>()));
  gh.lazySingleton<_i68.TransactionRemoteDataSource>(() =>
      _i68.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i69.TransactionRepository>(() =>
      _i70.TransactionRepositoryImpl(
          dataSource: get<_i68.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i71.UpdateAcadamicInfo>(() => _i71.UpdateAcadamicInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i72.UpdateAddressInfo>(() => _i72.UpdateAddressInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i73.UpdateKycInfo>(() => _i73.UpdateKycInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i74.UpdateOtherInfo>(() => _i74.UpdateOtherInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i75.UpdatePersonalInfo>(() => _i75.UpdatePersonalInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i76.UpdateQualificationInfo>(() => _i76.UpdateQualificationInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i77.UpdateResumeImage>(() => _i77.UpdateResumeImage(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i78.UpdateWorkInfo>(() => _i78.UpdateWorkInfo(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i79.UtilityPaymentDataSource>(() =>
      _i79.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i80.UtilityPaymentRepository>(() =>
      _i81.UtilityPaymentRepositoryImpl(
          dataSource: get<_i79.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i82.VerifyEmail>(() => _i82.VerifyEmail(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i83.VerifyEmailBloc>(
      () => _i83.VerifyEmailBloc(verifyEmail: get<_i82.VerifyEmail>()));
  gh.lazySingleton<_i84.VerifyEsewaTopup>(() => _i84.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i42.LoadBalanceRepositories>()));
  gh.factory<_i85.VerifyEsewaTopupBloc>(() => _i85.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i84.VerifyEsewaTopup>()));
  gh.lazySingleton<_i86.VerifyImePayTopup>(() => _i86.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i42.LoadBalanceRepositories>()));
  gh.lazySingleton<_i87.VerifyKhaltiTopup>(() => _i87.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i42.LoadBalanceRepositories>()));
  gh.factory<_i88.VerifyKhaltiTopupBloc>(() => _i88.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i87.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i89.GetCountries>(() => _i89.GetCountries(
      repository: get<_i45.LocationInformationRepositoryProtocol>()));
  gh.factory<_i90.GetDownloadablePdfLink>(() => _i90.GetDownloadablePdfLink(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i91.GetFavouriteNews>(() =>
      _i91.GetFavouriteNews(repository: get<_i50.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i92.GetHomePageData>(() => _i92.GetHomePageData(
      repository: get<_i38.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i93.GetIndivisualTransaction>(() =>
      _i93.GetIndivisualTransaction(
          repository: get<_i69.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i94.GetLatestNews>(() => _i94.GetLatestNews(
      repository: get<_i50.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i95.GetListOfCityFromPrefectures>(() =>
      _i95.GetListOfCityFromPrefectures(
          repository: get<_i45.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i96.GetListOfPaymentMethods>(() =>
      _i96.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i42.LoadBalanceRepositories>()));
  gh.lazySingleton<_i97.GetNewsForYou>(() => _i97.GetNewsForYou(
      repository: get<_i50.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i98.GetNewsGenre>(
      () => _i98.GetNewsGenre(repository: get<_i50.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i99.GetNewsPreferences>(() =>
      _i99.GetNewsPreferences(repository: get<_i50.NewsRepositoryProtocol>()));
  gh.factory<_i100.GetPaymentMethodsBloc>(() => _i100.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i96.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i101.GetPrefectureCityFromPostalCode>(() =>
      _i101.GetPrefectureCityFromPostalCode(
          repository: get<_i45.LocationInformationRepositoryProtocol>()));
  gh.factory<_i102.GetResume>(() => _i102.GetResume(
      repository: get<_i58.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i103.GetSubscriptionDetailForPartnerService>(() =>
      _i103.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i80.UtilityPaymentRepository>()));
  gh.lazySingleton<_i104.GetTransactions>(() => _i104.GetTransactions(
      repository: get<_i69.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i105.HomePageDataBloc>(() =>
      _i105.HomePageDataBloc(getHomePageData: get<_i92.GetHomePageData>()));
  gh.lazySingleton<_i106.JapaneseMannerRepository>(() =>
      _i107.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i40.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i108.LatestNewsBloc>(
      () => _i108.LatestNewsBloc(getNews: get<_i94.GetLatestNews>()));
  gh.factory<_i109.LocationViaPostalCodeBloc>(() =>
      _i109.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i101.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i110.NewsBloc>(
      () => _i110.NewsBloc(getNews: get<_i97.GetNewsForYou>()));
  gh.factory<_i111.NewsGenreBloc>(
      () => _i111.NewsGenreBloc(getNewsGenre: get<_i98.GetNewsGenre>()));
  gh.factory<_i112.NewsPreferenceBloc>(() => _i112.NewsPreferenceBloc(
      getNewsPreferences: get<_i99.GetNewsPreferences>()));
  gh.lazySingleton<_i113.NotificationRepository>(() =>
      _i114.NotificationRepositoryImpl(
          dataSource: get<_i52.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i115.ParnterServicesBloc>(() => _i115.ParnterServicesBloc(
      getPartnerServices: get<_i116.GetPartnerServices>()));
  gh.factory<_i117.PartnerServiceCategoriesBloc>(() =>
      _i117.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i118.GetPartnerServicesCategories>()));
  gh.factory<_i119.PasswordResetBloc>(() => _i119.PasswordResetBloc(
      resetPasswordUseCase: get<_i56.ResetPasswordUseCase>()));
  gh.lazySingleton<_i120.PurchaseSubscriptionFromPartnerService>(() =>
      _i120.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i80.UtilityPaymentRepository>()));
  gh.lazySingleton<_i121.ResumeWatcherBloc>(
      () => _i121.ResumeWatcherBloc(getResume: get<_i102.GetResume>()));
  gh.factory<_i122.SignInFormBloc>(() => _i122.SignInFormBloc(
      signInWithEmailUsecase: get<_i61.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i60.SignInWithApple>(),
      signInWithFacebook: get<_i62.SignInWithFacebook>(),
      signInWithGoogle: get<_i63.SignInWithGoogle>()));
  gh.factory<_i123.SignUpFormBloc>(() => _i123.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i64.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i124.SubscriptionForPartnerServiceBloc>(() =>
      _i124.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i103.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i120.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i125.TopUpBalanceForMobile>(() =>
      _i125.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i80.UtilityPaymentRepository>()));
  gh.factory<_i126.TopUpBalanceInMobileBloc>(() =>
      _i126.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i125.TopUpBalanceForMobile>()));
  gh.factory<_i127.UpdateProfileBloc>(() => _i127.UpdateProfileBloc(
      updateKycInfo: get<_i73.UpdateKycInfo>(),
      updateResumeImage: get<_i77.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i95.GetListOfCityFromPrefectures>()));
  gh.factory<_i128.DownloadPdfBloc>(() => _i128.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i90.GetDownloadablePdfLink>()));
  gh.factory<_i129.FavouriteNewsBloc>(() =>
      _i129.FavouriteNewsBloc(getFavouriteNews: get<_i91.GetFavouriteNews>()));
  gh.lazySingleton<_i130.GetNotifications>(() => _i130.GetNotifications(
      repository: get<_i113.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i131.JapaneseMannerBloc>(() => _i131.JapaneseMannerBloc(
      getJapaneseManner: get<_i132.GetJapaneseManner>()));
  gh.factory<_i133.JapaneseMannerCategoriesBloc>(() =>
      _i133.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i134.GetJapaneseMannerCategories>()));
  gh.factory<_i135.NotificationsBloc>(() =>
      _i135.NotificationsBloc(getNotifications: get<_i130.GetNotifications>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i136.DBProvider>(_i136.DBProviderImpl());
  gh.singleton<_i49.NewsLocalProvider>(
      _i49.NewsLocalProviderImpl(provider: get<_i136.DBProvider>()));
  gh.singleton<_i137.PurchasePackage>(_i137.PurchasePackage(
      repository: get<_i54.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i138.PurchasePackageBloc>(
      _i138.PurchasePackageBloc(purchasePackage: get<_i137.PurchasePackage>()));
  gh.singleton<_i116.GetPartnerServices>(_i116.GetPartnerServices(
      repository: get<_i54.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i118.GetPartnerServicesCategories>(
      _i118.GetPartnerServicesCategories(
          repository: get<_i54.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i139.IndividualTransactionBloc>(_i139.IndividualTransactionBloc(
      getIndividualTxn: get<_i93.GetIndivisualTransaction>()));
  gh.singleton<_i140.TransactionBloc>(
      _i140.TransactionBloc(getTransaction: get<_i104.GetTransactions>()));
  gh.singleton<_i132.GetJapaneseManner>(_i132.GetJapaneseManner(
      repository: get<_i106.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i134.GetJapaneseMannerCategories>(
      _i134.GetJapaneseMannerCategories(
          repository: get<_i106.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i141.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i142.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i143.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i144.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i145.SharedPreferenceModule {}
