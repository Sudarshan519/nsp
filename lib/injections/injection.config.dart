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
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../core/database/local_database_provider.dart' as _i210;
import '../core/database/news_provider.dart' as _i70;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i17;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i129;
import '../features/ads/data/repository/ads_repository.dart' as _i131;
import '../features/ads/domain/repositories/ads_repository.dart' as _i130;
import '../features/ads/domain/use_case/get_ads.dart' as _i140;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i195;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i22;
import '../features/alerts/data/repository/alert_repository.dart' as _i24;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i23;
import '../features/alerts/domain/usecase/get_alert_places.dart' as _i43;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i41;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i48;
import '../features/alerts/domain/usecase/get_place_from_gps.dart' as _i50;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i53;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i56;
import '../features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart'
    as _i211;
import '../features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart'
    as _i141;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i42;
import '../features/alerts/presentation/get_disaster_detail/get_disaster_detail_bloc.dart'
    as _i143;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i49;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i54;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i57;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i25;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i26;
import '../features/auth/data/repository/auth_repository.dart' as _i28;
import '../features/auth/domain/repositories/auth_repository.dart' as _i27;
import '../features/auth/domain/usecase/change_password.dart' as _i32;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i55;
import '../features/auth/domain/usecase/logout_user.dart' as _i68;
import '../features/auth/domain/usecase/request_phone_otp.dart' as _i80;
import '../features/auth/domain/usecase/reset_password.dart' as _i81;
import '../features/auth/domain/usecase/set_mpin.dart' as _i89;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i91;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i92;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i93;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i94;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i95;
import '../features/auth/domain/usecase/verify_email.dart' as _i117;
import '../features/auth/domain/usecase/verify_phone.dart' as _i125;
import '../features/auth/presentation/password/change_password/change_password_bloc.dart'
    as _i133;
import '../features/auth/presentation/password/password_reset/password_reset_bloc.dart'
    as _i179;
import '../features/auth/presentation/security/mpin/set_mpin_bloc.dart' as _i90;
import '../features/auth/presentation/security/verify_phone/verify_phone_bloc.dart'
    as _i126;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i188;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i189;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i118;
import '../features/contact_us/data/data_source/contact_us_remote_data_surce.dart'
    as _i33;
import '../features/contact_us/data/repository/contact_us_remoritory.dart'
    as _i35;
import '../features/contact_us/domain/repository/contact_us_repository.dart'
    as _i34;
import '../features/contact_us/domain/use_case/contact_us.dart' as _i36;
import '../features/contact_us/presentation/contact_us/contact_us_bloc.dart'
    as _i134;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i37;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i39;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i38;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i132;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i46;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i79;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i115;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i47;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i183;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i116;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i58;
import '../features/home/data/repositories/home_repository.dart' as _i60;
import '../features/home/domain/repositories/home_repository.dart' as _i59;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i146;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i162;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i61;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i165;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i164;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i201;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i203;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i205;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i200;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i202;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i204;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i62;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i64;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i63;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i135;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i151;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i97;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i99;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i119;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i121;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i123;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i127;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i136;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i120;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i156;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i122;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i124;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i16;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i128;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i98;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i100;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i65;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i67;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i66;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i142;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i150;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i157;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i168;
import '../features/news/data/datasource/news_local_data_source.dart' as _i69;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i72;
import '../features/news/domain/repository/news_repository.dart' as _i71;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i145;
import '../features/news/domain/usecase/get_latest_news.dart' as _i149;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i153;
import '../features/news/domain/usecase/get_news_genre.dart' as _i154;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i155;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i197;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i167;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i170;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i171;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i172;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i73;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i174;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i173;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i198;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i208;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i74;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i76;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i75;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i176;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i178;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i78;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i175;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i177;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i77;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i29;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i31;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i30;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i44;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i45;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i194;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i82;
import '../features/resume/data/repository/resume_repository.dart' as _i84;
import '../features/resume/domain/repository/resume_repository.dart' as _i83;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i137;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i144;
import '../features/resume/domain/usecases/get_resume.dart' as _i158;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i104;
import '../features/resume/domain/usecases/update_address_info.dart' as _i105;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i106;
import '../features/resume/domain/usecases/update_other_info.dart' as _i107;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i108;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i109;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i110;
import '../features/resume/domain/usecases/update_work_info.dart' as _i111;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i196;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i184;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i85;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i186;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i185;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i199;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i209;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i86;
import '../features/search/data/repository/search_repository.dart' as _i88;
import '../features/search/domain/repositories/search_repository.dart' as _i87;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i159;
import '../features/search/presentation/bloc/search_bloc.dart' as _i187;
import '../features/splash/presentation/splash_bloc.dart' as _i96;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i101;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i103;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i102;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i147;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i161;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i163;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i193;
import '../features/user_device/data/data_source/user_device_remote_data_source.dart'
    as _i19;
import '../features/user_device/data/repository/user_device_repository.dart'
    as _i21;
import '../features/user_device/domain/repository/user_device_repository.dart'
    as _i20;
import '../features/user_device/domain/use_case/delete_user_device.dart'
    as _i40;
import '../features/user_device/domain/use_case/get_user_devices.dart' as _i51;
import '../features/user_device/presentation/get_user_devices/get_user_devices_bloc.dart'
    as _i52;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i112;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i114;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i113;
import '../features/utility_payments/domain/usecases/electicity/enquiry_nea.dart'
    as _i139;
import '../features/utility_payments/domain/usecases/electicity/get_nea_offices.dart'
    as _i152;
import '../features/utility_payments/domain/usecases/electicity/pay_nea.dart'
    as _i181;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i160;
import '../features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart'
    as _i138;
import '../features/utility_payments/domain/usecases/khanepani/get_khanepani_offices.dart'
    as _i148;
import '../features/utility_payments/domain/usecases/khanepani/pay_khanepani.dart'
    as _i180;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i182;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i191;
import '../features/utility_payments/presentation/electricity/bloc/nea_payment_bloc.dart'
    as _i207;
import '../features/utility_payments/presentation/electricity/nea_offices/nea_offices_bloc.dart'
    as _i169;
import '../features/utility_payments/presentation/khanepani/bloc/khanepani_payment_bloc.dart'
    as _i206;
import '../features/utility_payments/presentation/khanepani/khanepani_offices/khanepani_offices_bloc.dart'
    as _i166;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i190;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i192;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i215;
import 'injectable/flutter_secure_storage_module.dart' as _i213;
import 'injectable/google_login_injectable_module.dart' as _i214;
import 'injectable/http_client_injectable_module.dart' as _i212;
import 'injectable/shared_preference_module.dart'
    as _i216; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i16.PrabhuPayFormCubit>(() => _i16.PrabhuPayFormCubit());
  gh.lazySingleton<_i17.PushNotificationManager>(
      () => _i17.PushNotificationManager());
  await gh.factoryAsync<_i18.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i19.UserDeviceRemoteDataSource>(() =>
      _i19.UserDeviceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i20.UserDeviceRepository>(() =>
      _i21.UserDeviceRepositoryImpl(
          get<_i19.UserDeviceRemoteDataSource>(), get<_i12.Logger>()));
  gh.lazySingleton<_i22.AlertRemoteDataSource>(() =>
      _i22.AlertRemoteDataSourceImpl(
          logger: get<_i12.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>()));
  gh.lazySingleton<_i23.AlertRepository>(() => _i24.AlertRepositoryImpl(
      dataSource: get<_i22.AlertRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i25.AuthLocalDataSource>(() => _i25.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i18.SharedPreferences>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i26.AuthRemoteDataSource>(() =>
      _i26.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i27.AuthRepository>(() => _i28.AuthRepositoryImpl(
      remoteDataSource: get<_i26.AuthRemoteDataSource>(),
      localDataSource: get<_i25.AuthLocalDataSource>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i29.BalanceRemoteDataSource>(() =>
      _i29.BalanceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i30.BalanceRepository>(() => _i31.BalanceRepositoryImpl(
      dataSource: get<_i29.BalanceRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i32.ChangePasswordUseCase>(() => _i32.ChangePasswordUseCase(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i33.ContactUsRemoteDataSource>(() =>
      _i33.ContactUsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i34.ContactUsRepository>(() => _i35.ContactUsRepositoryImpl(
      dataSource: get<_i33.ContactUsRemoteDataSource>()));
  gh.lazySingleton<_i36.ContactUsUseCase>(() => _i36.ContactUsUseCase(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i34.ContactUsRepository>()));
  gh.lazySingleton<_i37.CouponRemoteDataSource>(() =>
      _i37.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i38.CouponRepository>(() => _i39.CouponRepositoryImpl(
      dataSource: get<_i37.CouponRemoteDataSource>()));
  gh.lazySingleton<_i40.DeleteDevice>(() => _i40.DeleteDevice(
      repository: get<_i20.UserDeviceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i41.GetAlerts>(() => _i41.GetAlerts(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i42.GetAlertsBloc>(
      () => _i42.GetAlertsBloc(getAlerts: get<_i41.GetAlerts>()));
  gh.lazySingleton<_i43.GetAlertsPlaces>(() => _i43.GetAlertsPlaces(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i44.GetBalance>(() => _i44.GetBalance(
      repository: get<_i30.BalanceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i45.GetBalanceBloc>(
      () => _i45.GetBalanceBloc(getBalance: get<_i44.GetBalance>()));
  gh.lazySingleton<_i46.GetCouponList>(() => _i46.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i38.CouponRepository>()));
  gh.factory<_i47.GetCouponListBloc>(
      () => _i47.GetCouponListBloc(getCouponList: get<_i46.GetCouponList>()));
  gh.lazySingleton<_i48.GetEarthquakes>(() => _i48.GetEarthquakes(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i49.GetEarthquakesBloc>(() =>
      _i49.GetEarthquakesBloc(getEarthquakes: get<_i48.GetEarthquakes>()));
  gh.lazySingleton<_i50.GetPlaceFromGPS>(() => _i50.GetPlaceFromGPS(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i51.GetUserDevices>(() => _i51.GetUserDevices(
      repository: get<_i20.UserDeviceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i52.GetUserDevicesBloc>(() => _i52.GetUserDevicesBloc(
      get<_i51.GetUserDevices>(), get<_i40.DeleteDevice>()));
  gh.lazySingleton<_i53.GetVolcanoes>(() => _i53.GetVolcanoes(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i54.GetVolcanoesBloc>(
      () => _i54.GetVolcanoesBloc(getVolcanoes: get<_i53.GetVolcanoes>()));
  gh.lazySingleton<_i55.GetWalletUser>(
      () => _i55.GetWalletUser(repository: get<_i27.AuthRepository>()));
  gh.lazySingleton<_i56.GetWeathers>(() => _i56.GetWeathers(
      repository: get<_i23.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i57.GetWeathersBloc>(
      () => _i57.GetWeathersBloc(getWeathers: get<_i56.GetWeathers>()));
  gh.lazySingleton<_i58.HomePageRemoteDataSource>(() =>
      _i58.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i59.HomeReporisitory>(() => _i60.HomeRepositoryImpl(
      remoteDataSource: get<_i58.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i61.JapaneseMannersRemoteDataSource>(() =>
      _i61.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i62.LoadBalanceDataSource>(() =>
      _i62.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i63.LoadBalanceRepositories>(() =>
      _i64.LoadBalanceRepositoriesImpl(
          dataSource: get<_i62.LoadBalanceDataSource>()));
  gh.lazySingleton<_i65.LocationInformationLocalDataSourceProtocol>(() =>
      _i65.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i66.LocationInformationRepositoryProtocol>(() =>
      _i67.LocationInformationRepository(
          dataSource: get<_i65.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i68.LogoutUser>(
      () => _i68.LogoutUser(repository: get<_i27.AuthRepository>()));
  gh.lazySingleton<_i69.NewsLocalDataSourceProtocol>(() =>
      _i69.NewsLocalDataSource(
          localProvider: get<_i70.NewsLocalProvider>(),
          preferences: get<_i18.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i71.NewsRepositoryProtocol>(() => _i72.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i69.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i73.NotificationsRemoteDataSource>(() =>
      _i73.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i74.PartnerServicesRemoteDataSource>(() =>
      _i74.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i25.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i75.PartnerServicesRepository>(() =>
      _i76.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i74.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i77.PurchasePackageBloc>(() =>
      _i77.PurchasePackageBloc(purchasePackage: get<_i78.PurchasePackage>()));
  gh.lazySingleton<_i79.RedeemCoupon>(() => _i79.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i38.CouponRepository>()));
  gh.lazySingleton<_i80.RequestPhoneOtp>(() => _i80.RequestPhoneOtp(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i81.ResetPasswordUseCase>(() => _i81.ResetPasswordUseCase(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i82.ResumeRemoteDataSource>(() =>
      _i82.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i83.ResumeRepository>(() => _i84.ResumeRepositoryImpl(
      dataSource: get<_i82.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i85.RewardPointsRemoteDataSource>(() =>
      _i85.RewardPointsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i86.SearchPageRemoteDataSource>(() =>
      _i86.SearchPageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i87.SearchRepository>(() => _i88.SearchRepositoryImpl(
      dataSource: get<_i86.SearchPageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i89.SetMpin>(() => _i89.SetMpin(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i90.SetMpinBloc>(() => _i90.SetMpinBloc(get<_i89.SetMpin>()));
  gh.lazySingleton<_i91.SignInWithApple>(() => _i91.SignInWithApple(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i92.SignInWithEmailAndPassword>(() =>
      _i92.SignInWithEmailAndPassword(
          repository: get<_i27.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i93.SignInWithFacebook>(() => _i93.SignInWithFacebook(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i94.SignInWithGoogle>(() => _i94.SignInWithGoogle(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i95.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i95.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i27.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i96.SplashBloc>(
      () => _i96.SplashBloc(getWalletUser: get<_i55.GetWalletUser>()));
  gh.lazySingleton<_i97.StripeRefund>(() => _i97.StripeRefund(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i98.StripeRefundBloc>(
      () => _i98.StripeRefundBloc(stripeRefund: get<_i97.StripeRefund>()));
  gh.lazySingleton<_i99.TopUpViaStripe>(() => _i99.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i100.TopupViaStripeBloc>(() =>
      _i100.TopupViaStripeBloc(topUpViaStripe: get<_i99.TopUpViaStripe>()));
  gh.lazySingleton<_i101.TransactionRemoteDataSource>(() =>
      _i101.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i102.TransactionRepository>(() =>
      _i103.TransactionRepositoryImpl(
          dataSource: get<_i101.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i104.UpdateAcadamicInfo>(() => _i104.UpdateAcadamicInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i105.UpdateAddressInfo>(() => _i105.UpdateAddressInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i106.UpdateKycInfo>(() => _i106.UpdateKycInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i107.UpdateOtherInfo>(() => _i107.UpdateOtherInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i108.UpdatePersonalInfo>(() => _i108.UpdatePersonalInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i109.UpdateQualificationInfo>(() => _i109.UpdateQualificationInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i110.UpdateResumeImage>(() => _i110.UpdateResumeImage(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i111.UpdateWorkInfo>(() => _i111.UpdateWorkInfo(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i112.UtilityPaymentDataSource>(() =>
      _i112.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i113.UtilityPaymentRepository>(() =>
      _i114.UtilityPaymentRepositoryImpl(
          dataSource: get<_i112.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i115.VerifyCoupon>(() => _i115.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i38.CouponRepository>()));
  gh.factory<_i116.VerifyCouponBloc>(
      () => _i116.VerifyCouponBloc(verifyCoupon: get<_i115.VerifyCoupon>()));
  gh.lazySingleton<_i117.VerifyEmail>(() => _i117.VerifyEmail(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i118.VerifyEmailBloc>(
      () => _i118.VerifyEmailBloc(verifyEmail: get<_i117.VerifyEmail>()));
  gh.lazySingleton<_i119.VerifyEsewaTopup>(() => _i119.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i120.VerifyEsewaTopupBloc>(() => _i120.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i119.VerifyEsewaTopup>()));
  gh.lazySingleton<_i121.VerifyImePayTopup>(() => _i121.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i122.VerifyImePayTopupBloc>(() => _i122.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i121.VerifyImePayTopup>()));
  gh.lazySingleton<_i123.VerifyKhaltiTopup>(() => _i123.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i124.VerifyKhaltiTopupBloc>(() => _i124.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i123.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i125.VerifyPhone>(() => _i125.VerifyPhone(
      repository: get<_i27.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i126.VerifyPhoneBloc>(() => _i126.VerifyPhoneBloc(
      verifyPhone: get<_i125.VerifyPhone>(),
      requestPhoneOtp: get<_i80.RequestPhoneOtp>()));
  gh.lazySingleton<_i127.VerifyPrabhuPayTopup>(() => _i127.VerifyPrabhuPayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i128.VerifyPrabhuPayTopupBloc>(() =>
      _i128.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: get<_i127.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i129.AdsRemoteDataSource>(() =>
      _i129.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i25.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i130.AdsRepository>(() =>
      _i131.AdsRepositoryImpl(dataSource: get<_i129.AdsRemoteDataSource>()));
  gh.lazySingleton<_i132.ApplyCoupon>(() => _i132.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i38.CouponRepository>()));
  gh.factory<_i133.ChangePasswordBloc>(
      () => _i133.ChangePasswordBloc(get<_i32.ChangePasswordUseCase>()));
  gh.factory<_i134.ContactUsBloc>(
      () => _i134.ContactUsBloc(get<_i36.ContactUsUseCase>()));
  gh.lazySingleton<_i135.DeleteCard>(() => _i135.DeleteCard(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i63.LoadBalanceRepositories>()));
  gh.factory<_i136.DeleteCardBloc>(
      () => _i136.DeleteCardBloc(deleteCard: get<_i135.DeleteCard>()));
  gh.factory<_i137.DeleteResumeData>(() => _i137.DeleteResumeData(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i138.EnquireKhanepani>(() => _i138.EnquireKhanepani(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i139.EnquiryNea>(() => _i139.EnquiryNea(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i140.GetAds>(() => _i140.GetAds(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i130.AdsRepository>()));
  gh.factory<_i141.GetAlertPlacesBloc>(
      () => _i141.GetAlertPlacesBloc(get<_i43.GetAlertsPlaces>()));
  gh.lazySingleton<_i142.GetCountries>(() => _i142.GetCountries(
      repository: get<_i66.LocationInformationRepositoryProtocol>()));
  gh.factory<_i143.GetDisasterDetailBloc>(() => _i143.GetDisasterDetailBloc(
      getEarthquakes: get<_i48.GetEarthquakes>(),
      getVolcanoes: get<_i53.GetVolcanoes>()));
  gh.factory<_i144.GetDownloadablePdfLink>(() => _i144.GetDownloadablePdfLink(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i145.GetFavouriteNews>(() =>
      _i145.GetFavouriteNews(repository: get<_i71.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i146.GetHomePageData>(() => _i146.GetHomePageData(
      repository: get<_i59.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i147.GetIndivisualTransaction>(() =>
      _i147.GetIndivisualTransaction(
          repository: get<_i102.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i148.GetKhanepaniOffices>(() => _i148.GetKhanepaniOffices(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i149.GetLatestNews>(() => _i149.GetLatestNews(
      repository: get<_i71.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i150.GetListOfCityFromPrefectures>(() =>
      _i150.GetListOfCityFromPrefectures(
          repository: get<_i66.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i151.GetListOfPaymentMethods>(() =>
      _i151.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i63.LoadBalanceRepositories>()));
  gh.lazySingleton<_i152.GetNeaOffice>(() => _i152.GetNeaOffice(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i153.GetNewsForYou>(() => _i153.GetNewsForYou(
      repository: get<_i71.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i154.GetNewsGenre>(
      () => _i154.GetNewsGenre(repository: get<_i71.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i155.GetNewsPreferences>(() =>
      _i155.GetNewsPreferences(repository: get<_i71.NewsRepositoryProtocol>()));
  gh.factory<_i156.GetPaymentMethodsBloc>(() => _i156.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i151.GetListOfPaymentMethods>(),
      deletecard: get<_i135.DeleteCard>()));
  gh.lazySingleton<_i157.GetPrefectureCityFromPostalCode>(() =>
      _i157.GetPrefectureCityFromPostalCode(
          repository: get<_i66.LocationInformationRepositoryProtocol>()));
  gh.factory<_i158.GetResume>(() => _i158.GetResume(
      repository: get<_i83.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i159.GetSearchPageData>(() => _i159.GetSearchPageData(
      repository: get<_i87.SearchRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i160.GetSubscriptionDetailForPartnerService>(() =>
      _i160.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i161.GetTransactions>(() => _i161.GetTransactions(
      repository: get<_i102.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i162.HomePageDataBloc>(() =>
      _i162.HomePageDataBloc(getHomePageData: get<_i146.GetHomePageData>()));
  gh.factory<_i163.IndividualTransactionBloc>(() =>
      _i163.IndividualTransactionBloc(
          getIndividualTxn: get<_i147.GetIndivisualTransaction>()));
  gh.lazySingleton<_i164.JapaneseMannerRepository>(() =>
      _i165.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i61.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i166.KhanepaniOfficesBloc>(
      () => _i166.KhanepaniOfficesBloc(get<_i148.GetKhanepaniOffices>()));
  gh.lazySingleton<_i167.LatestNewsBloc>(
      () => _i167.LatestNewsBloc(getNews: get<_i149.GetLatestNews>()));
  gh.factory<_i168.LocationViaPostalCodeBloc>(() =>
      _i168.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i157.GetPrefectureCityFromPostalCode>()));
  gh.factory<_i169.NeaOfficesBloc>(
      () => _i169.NeaOfficesBloc(get<_i152.GetNeaOffice>()));
  gh.lazySingleton<_i170.NewsBloc>(
      () => _i170.NewsBloc(getNews: get<_i153.GetNewsForYou>()));
  gh.factory<_i171.NewsGenreBloc>(
      () => _i171.NewsGenreBloc(getNewsGenre: get<_i154.GetNewsGenre>()));
  gh.factory<_i172.NewsPreferenceBloc>(() => _i172.NewsPreferenceBloc(
      getNewsPreferences: get<_i155.GetNewsPreferences>()));
  gh.lazySingleton<_i173.NotificationRepository>(() =>
      _i174.NotificationRepositoryImpl(
          dataSource: get<_i73.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i175.ParnterServicesBloc>(() => _i175.ParnterServicesBloc(
      getPartnerServices: get<_i176.GetPartnerServices>()));
  gh.factory<_i177.PartnerServiceCategoriesBloc>(() =>
      _i177.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i178.GetPartnerServicesCategories>()));
  gh.factory<_i179.PasswordResetBloc>(() => _i179.PasswordResetBloc(
      resetPasswordUseCase: get<_i81.ResetPasswordUseCase>()));
  gh.lazySingleton<_i180.PayKhanepani>(() => _i180.PayKhanepani(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i181.PayNea>(() => _i181.PayNea(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i113.UtilityPaymentRepository>()));
  gh.lazySingleton<_i182.PurchaseSubscriptionFromPartnerService>(() =>
      _i182.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i113.UtilityPaymentRepository>()));
  gh.factory<_i183.RedeemCouponBloc>(() => _i183.RedeemCouponBloc(
      applyCoupon: get<_i132.ApplyCoupon>(),
      redeemCoupon: get<_i79.RedeemCoupon>()));
  gh.lazySingleton<_i184.ResumeWatcherBloc>(() => _i184.ResumeWatcherBloc(
      getResume: get<_i158.GetResume>(),
      deleteResumeData: get<_i137.DeleteResumeData>()));
  gh.lazySingleton<_i185.RewardPointRepository>(() =>
      _i186.RewardPointRepositoryImpl(
          dataSource: get<_i85.RewardPointsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i187.SearchBloc>(
      () => _i187.SearchBloc(get<_i159.GetSearchPageData>()));
  gh.factory<_i188.SignInFormBloc>(() => _i188.SignInFormBloc(
      signInWithEmailUsecase: get<_i92.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i91.SignInWithApple>(),
      signInWithFacebook: get<_i93.SignInWithFacebook>(),
      signInWithGoogle: get<_i94.SignInWithGoogle>()));
  gh.factory<_i189.SignUpFormBloc>(() => _i189.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i95.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i190.SubscriptionForPartnerServiceBloc>(() =>
      _i190.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i160.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i182.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i191.TopUpBalanceForMobile>(() =>
      _i191.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i113.UtilityPaymentRepository>()));
  gh.factory<_i192.TopUpBalanceInMobileBloc>(() =>
      _i192.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i191.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i193.TransactionBloc>(() =>
      _i193.TransactionBloc(getTransaction: get<_i161.GetTransactions>()));
  gh.factory<_i194.UpdateProfileBloc>(() => _i194.UpdateProfileBloc(
      updateKycInfo: get<_i106.UpdateKycInfo>(),
      updateResumeImage: get<_i110.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i150.GetListOfCityFromPrefectures>()));
  gh.factory<_i195.AdsBloc>(() =>
      _i195.AdsBloc(get<_i140.GetAds>(), get<_i129.AdsRemoteDataSource>()));
  gh.factory<_i196.DownloadPdfBloc>(() => _i196.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i144.GetDownloadablePdfLink>()));
  gh.factory<_i197.FavouriteNewsBloc>(() =>
      _i197.FavouriteNewsBloc(getFavouriteNews: get<_i145.GetFavouriteNews>()));
  gh.lazySingleton<_i198.GetNotifications>(() => _i198.GetNotifications(
      repository: get<_i173.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i199.GetRewardPoints>(() => _i199.GetRewardPoints(
      repository: get<_i185.RewardPointRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i200.JapaneseMannerBloc>(() => _i200.JapaneseMannerBloc(
      getJapaneseManner: get<_i201.GetJapaneseManner>()));
  gh.factory<_i202.JapaneseMannerCategoriesBloc>(() =>
      _i202.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i203.GetJapaneseMannerCategories>()));
  gh.factory<_i204.JapaneseMannerDetailBloc>(() =>
      _i204.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i205.GetJapaneseMannerDetail>()));
  gh.factory<_i206.KhanepaniPaymentBloc>(() => _i206.KhanepaniPaymentBloc(
      get<_i138.EnquireKhanepani>(), get<_i180.PayKhanepani>()));
  gh.factory<_i207.NeaPaymentBloc>(
      () => _i207.NeaPaymentBloc(get<_i139.EnquiryNea>(), get<_i181.PayNea>()));
  gh.factory<_i208.NotificationsBloc>(() =>
      _i208.NotificationsBloc(getNotifications: get<_i198.GetNotifications>()));
  gh.factory<_i209.RewardPointBloc>(() =>
      _i209.RewardPointBloc(getRewardPoints: get<_i199.GetRewardPoints>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i210.DBProvider>(_i210.DBProviderImpl());
  gh.singleton<_i70.NewsLocalProvider>(
      _i70.NewsLocalProviderImpl(provider: get<_i210.DBProvider>()));
  gh.singleton<_i78.PurchasePackage>(_i78.PurchasePackage(
      repository: get<_i75.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i211.GetAlertLocationBloc>(
      _i211.GetAlertLocationBloc(get<_i50.GetPlaceFromGPS>()));
  gh.singleton<_i176.GetPartnerServices>(_i176.GetPartnerServices(
      repository: get<_i75.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i178.GetPartnerServicesCategories>(
      _i178.GetPartnerServicesCategories(
          repository: get<_i75.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i201.GetJapaneseManner>(_i201.GetJapaneseManner(
      repository: get<_i164.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i203.GetJapaneseMannerCategories>(
      _i203.GetJapaneseMannerCategories(
          repository: get<_i164.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i205.GetJapaneseMannerDetail>(_i205.GetJapaneseMannerDetail(
      repository: get<_i164.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i212.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i213.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i214.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i215.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i216.SharedPreferenceModule {}
