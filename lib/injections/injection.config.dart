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
import 'package:shared_data/shared_data.dart' as _i18;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/database/local_database_provider.dart' as _i222;
import '../core/database/news_provider.dart' as _i71;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i17;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i130;
import '../features/ads/data/repository/ads_repository.dart' as _i132;
import '../features/ads/domain/repositories/ads_repository.dart' as _i131;
import '../features/ads/domain/use_case/get_ads.dart' as _i146;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i205;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i23;
import '../features/alerts/data/repository/alert_repository.dart' as _i25;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i24;
import '../features/alerts/domain/usecase/get_alert_places.dart' as _i44;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i42;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i49;
import '../features/alerts/domain/usecase/get_place_from_gps.dart' as _i51;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i54;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i57;
import '../features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart'
    as _i223;
import '../features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart'
    as _i147;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i43;
import '../features/alerts/presentation/get_disaster_detail/get_disaster_detail_bloc.dart'
    as _i150;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i50;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i55;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i58;
import '../features/app_update/data/data_source/app_update_remote_data_source.dart'
    as _i133;
import '../features/app_update/data/repository/app_update_repository.dart'
    as _i135;
import '../features/app_update/domain/repository/app_update_repository.dart'
    as _i134;
import '../features/app_update/domain/use_case/get_app_update.dart' as _i148;
import '../features/app_update/presentation/app_update/app_update_bloc.dart'
    as _i206;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i26;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i27;
import '../features/auth/data/repository/auth_repository.dart' as _i29;
import '../features/auth/domain/repositories/auth_repository.dart' as _i28;
import '../features/auth/domain/usecase/change_password.dart' as _i33;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i56;
import '../features/auth/domain/usecase/logout_user.dart' as _i69;
import '../features/auth/domain/usecase/request_phone_otp.dart' as _i81;
import '../features/auth/domain/usecase/reset_password.dart' as _i82;
import '../features/auth/domain/usecase/set_mpin.dart' as _i90;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i92;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i93;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i94;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i95;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i96;
import '../features/auth/domain/usecase/verify_email.dart' as _i118;
import '../features/auth/domain/usecase/verify_phone.dart' as _i126;
import '../features/auth/presentation/password/change_password/change_password_bloc.dart'
    as _i137;
import '../features/auth/presentation/password/password_reset/password_reset_bloc.dart'
    as _i186;
import '../features/auth/presentation/security/mpin/set_mpin_bloc.dart' as _i91;
import '../features/auth/presentation/security/verify_phone/verify_phone_bloc.dart'
    as _i127;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i197;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i198;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i119;
import '../features/contact_us/data/data_source/contact_us_remote_data_surce.dart'
    as _i34;
import '../features/contact_us/data/repository/contact_us_remoritory.dart'
    as _i36;
import '../features/contact_us/domain/repository/contact_us_repository.dart'
    as _i35;
import '../features/contact_us/domain/use_case/contact_us.dart' as _i37;
import '../features/contact_us/presentation/contact_us/contact_us_bloc.dart'
    as _i138;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i38;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i40;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i39;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i136;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i47;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i80;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i116;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i48;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i192;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i117;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i59;
import '../features/home/data/repositories/home_repository.dart' as _i61;
import '../features/home/domain/repositories/home_repository.dart' as _i60;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i153;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i169;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i62;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i172;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i171;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i213;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i215;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i217;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i212;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i214;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i216;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i63;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i65;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i64;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i139;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i158;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i98;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i100;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i120;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i122;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i124;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i128;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i140;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i121;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i163;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i123;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i125;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i16;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i129;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i99;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i101;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i66;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i68;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i67;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i149;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i157;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i164;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i175;
import '../features/news/data/datasource/news_local_data_source.dart' as _i70;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i73;
import '../features/news/domain/repository/news_repository.dart' as _i72;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i152;
import '../features/news/domain/usecase/get_latest_news.dart' as _i156;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i160;
import '../features/news/domain/usecase/get_news_genre.dart' as _i161;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i162;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i208;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i174;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i177;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i178;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i179;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i74;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i181;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i180;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i209;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i220;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i75;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i77;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i76;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i183;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i185;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i79;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i182;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i184;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i78;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i30;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i32;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i31;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i45;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i46;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i204;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i83;
import '../features/resume/data/repository/resume_repository.dart' as _i85;
import '../features/resume/domain/repository/resume_repository.dart' as _i84;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i141;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i151;
import '../features/resume/domain/usecases/get_resume.dart' as _i165;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i105;
import '../features/resume/domain/usecases/update_address_info.dart' as _i106;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i107;
import '../features/resume/domain/usecases/update_other_info.dart' as _i108;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i109;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i110;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i111;
import '../features/resume/domain/usecases/update_work_info.dart' as _i112;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i207;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i193;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i86;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i195;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i194;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i210;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i221;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i87;
import '../features/search/data/repository/search_repository.dart' as _i89;
import '../features/search/domain/repositories/search_repository.dart' as _i88;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i166;
import '../features/search/presentation/bloc/search_bloc.dart' as _i196;
import '../features/splash/presentation/splash_bloc.dart' as _i97;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i102;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i104;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i103;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i154;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i168;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i170;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i202;
import '../features/user_device/data/data_source/user_device_remote_data_source.dart'
    as _i20;
import '../features/user_device/data/repository/user_device_repository.dart'
    as _i22;
import '../features/user_device/domain/repository/user_device_repository.dart'
    as _i21;
import '../features/user_device/domain/use_case/delete_user_device.dart'
    as _i41;
import '../features/user_device/domain/use_case/get_user_devices.dart' as _i52;
import '../features/user_device/presentation/get_user_devices/get_user_devices_bloc.dart'
    as _i53;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i113;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i115;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i114;
import '../features/utility_payments/domain/usecases/electicity/enquiry_nea.dart'
    as _i144;
import '../features/utility_payments/domain/usecases/electicity/get_nea_offices.dart'
    as _i159;
import '../features/utility_payments/domain/usecases/electicity/pay_nea.dart'
    as _i189;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i167;
import '../features/utility_payments/domain/usecases/isp/enquiry_isp.dart'
    as _i143;
import '../features/utility_payments/domain/usecases/isp/pay_isp.dart' as _i187;
import '../features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart'
    as _i142;
import '../features/utility_payments/domain/usecases/khanepani/get_khanepani_offices.dart'
    as _i155;
import '../features/utility_payments/domain/usecases/khanepani/pay_khanepani.dart'
    as _i188;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i191;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i200;
import '../features/utility_payments/domain/usecases/tv/enquiry_tv.dart'
    as _i145;
import '../features/utility_payments/domain/usecases/tv/pay_tv.dart' as _i190;
import '../features/utility_payments/presentation/electricity/bloc/nea_payment_bloc.dart'
    as _i219;
import '../features/utility_payments/presentation/electricity/nea_offices/nea_offices_bloc.dart'
    as _i176;
import '../features/utility_payments/presentation/isp/isp_payment_bloc.dart'
    as _i211;
import '../features/utility_payments/presentation/khanepani/bloc/khanepani_payment_bloc.dart'
    as _i218;
import '../features/utility_payments/presentation/khanepani/khanepani_offices/khanepani_offices_bloc.dart'
    as _i173;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i199;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i201;
import '../features/utility_payments/presentation/tv/tv_payment_bloc.dart'
    as _i203;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i227;
import 'injectable/flutter_secure_storage_module.dart' as _i225;
import 'injectable/google_login_injectable_module.dart' as _i226;
import 'injectable/http_client_injectable_module.dart' as _i224;
import 'injectable/shared_bnpj_storage_module.dart' as _i228;
import 'injectable/shared_preference_module.dart'
    as _i229; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final flutterStorageModule = _$FlutterStorageModule();
  final googleLoginInjectableModule = _$GoogleLoginInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final shareBNPJStorageModule = _$ShareBNPJStorageModule();
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
  gh.factory<_i18.SharedData>(() => shareBNPJStorageModule.data);
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i20.UserDeviceRemoteDataSource>(() =>
      _i20.UserDeviceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i21.UserDeviceRepository>(() =>
      _i22.UserDeviceRepositoryImpl(
          get<_i20.UserDeviceRemoteDataSource>(), get<_i12.Logger>()));
  gh.lazySingleton<_i23.AlertRemoteDataSource>(() =>
      _i23.AlertRemoteDataSourceImpl(
          logger: get<_i12.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>()));
  gh.lazySingleton<_i24.AlertRepository>(() => _i25.AlertRepositoryImpl(
      dataSource: get<_i23.AlertRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i26.AuthLocalDataSource>(() => _i26.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i19.SharedPreferences>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i27.AuthRemoteDataSource>(() =>
      _i27.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i28.AuthRepository>(() => _i29.AuthRepositoryImpl(
      remoteDataSource: get<_i27.AuthRemoteDataSource>(),
      localDataSource: get<_i26.AuthLocalDataSource>(),
      bnpjSharedData: get<_i18.SharedData>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i30.BalanceRemoteDataSource>(() =>
      _i30.BalanceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i31.BalanceRepository>(() => _i32.BalanceRepositoryImpl(
      dataSource: get<_i30.BalanceRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i33.ChangePasswordUseCase>(() => _i33.ChangePasswordUseCase(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i34.ContactUsRemoteDataSource>(() =>
      _i34.ContactUsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i35.ContactUsRepository>(() => _i36.ContactUsRepositoryImpl(
      dataSource: get<_i34.ContactUsRemoteDataSource>()));
  gh.lazySingleton<_i37.ContactUsUseCase>(() => _i37.ContactUsUseCase(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i35.ContactUsRepository>()));
  gh.lazySingleton<_i38.CouponRemoteDataSource>(() =>
      _i38.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i39.CouponRepository>(() => _i40.CouponRepositoryImpl(
      dataSource: get<_i38.CouponRemoteDataSource>()));
  gh.lazySingleton<_i41.DeleteDevice>(() => _i41.DeleteDevice(
      repository: get<_i21.UserDeviceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i42.GetAlerts>(() => _i42.GetAlerts(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i43.GetAlertsBloc>(
      () => _i43.GetAlertsBloc(getAlerts: get<_i42.GetAlerts>()));
  gh.lazySingleton<_i44.GetAlertsPlaces>(() => _i44.GetAlertsPlaces(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i45.GetBalance>(() => _i45.GetBalance(
      repository: get<_i31.BalanceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i46.GetBalanceBloc>(
      () => _i46.GetBalanceBloc(getBalance: get<_i45.GetBalance>()));
  gh.lazySingleton<_i47.GetCouponList>(() => _i47.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i39.CouponRepository>()));
  gh.factory<_i48.GetCouponListBloc>(
      () => _i48.GetCouponListBloc(getCouponList: get<_i47.GetCouponList>()));
  gh.lazySingleton<_i49.GetEarthquakes>(() => _i49.GetEarthquakes(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i50.GetEarthquakesBloc>(() =>
      _i50.GetEarthquakesBloc(getEarthquakes: get<_i49.GetEarthquakes>()));
  gh.lazySingleton<_i51.GetPlaceFromGPS>(() => _i51.GetPlaceFromGPS(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i52.GetUserDevices>(() => _i52.GetUserDevices(
      repository: get<_i21.UserDeviceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i53.GetUserDevicesBloc>(() => _i53.GetUserDevicesBloc(
      get<_i52.GetUserDevices>(), get<_i41.DeleteDevice>()));
  gh.lazySingleton<_i54.GetVolcanoes>(() => _i54.GetVolcanoes(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i55.GetVolcanoesBloc>(
      () => _i55.GetVolcanoesBloc(getVolcanoes: get<_i54.GetVolcanoes>()));
  gh.lazySingleton<_i56.GetWalletUser>(
      () => _i56.GetWalletUser(repository: get<_i28.AuthRepository>()));
  gh.lazySingleton<_i57.GetWeathers>(() => _i57.GetWeathers(
      repository: get<_i24.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i58.GetWeathersBloc>(
      () => _i58.GetWeathersBloc(getWeathers: get<_i57.GetWeathers>()));
  gh.lazySingleton<_i59.HomePageRemoteDataSource>(() =>
      _i59.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i60.HomeReporisitory>(() => _i61.HomeRepositoryImpl(
      remoteDataSource: get<_i59.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i62.JapaneseMannersRemoteDataSource>(() =>
      _i62.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i63.LoadBalanceDataSource>(() =>
      _i63.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i64.LoadBalanceRepositories>(() =>
      _i65.LoadBalanceRepositoriesImpl(
          dataSource: get<_i63.LoadBalanceDataSource>()));
  gh.lazySingleton<_i66.LocationInformationLocalDataSourceProtocol>(() =>
      _i66.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i67.LocationInformationRepositoryProtocol>(() =>
      _i68.LocationInformationRepository(
          dataSource: get<_i66.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i69.LogoutUser>(
      () => _i69.LogoutUser(repository: get<_i28.AuthRepository>()));
  gh.lazySingleton<_i70.NewsLocalDataSourceProtocol>(() =>
      _i70.NewsLocalDataSource(
          localProvider: get<_i71.NewsLocalProvider>(),
          preferences: get<_i19.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i72.NewsRepositoryProtocol>(() => _i73.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i70.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i74.NotificationsRemoteDataSource>(() =>
      _i74.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i75.PartnerServicesRemoteDataSource>(() =>
      _i75.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i26.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i76.PartnerServicesRepository>(() =>
      _i77.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i75.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i78.PurchasePackageBloc>(() =>
      _i78.PurchasePackageBloc(purchasePackage: get<_i79.PurchasePackage>()));
  gh.lazySingleton<_i80.RedeemCoupon>(() => _i80.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i39.CouponRepository>()));
  gh.lazySingleton<_i81.RequestPhoneOtp>(() => _i81.RequestPhoneOtp(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i82.ResetPasswordUseCase>(() => _i82.ResetPasswordUseCase(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i83.ResumeRemoteDataSource>(() =>
      _i83.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i84.ResumeRepository>(() => _i85.ResumeRepositoryImpl(
      dataSource: get<_i83.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i86.RewardPointsRemoteDataSource>(() =>
      _i86.RewardPointsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i87.SearchPageRemoteDataSource>(() =>
      _i87.SearchPageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i88.SearchRepository>(() => _i89.SearchRepositoryImpl(
      dataSource: get<_i87.SearchPageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i90.SetMpin>(() => _i90.SetMpin(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i91.SetMpinBloc>(() => _i91.SetMpinBloc(get<_i90.SetMpin>()));
  gh.lazySingleton<_i92.SignInWithApple>(() => _i92.SignInWithApple(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i93.SignInWithEmailAndPassword>(() =>
      _i93.SignInWithEmailAndPassword(
          repository: get<_i28.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i94.SignInWithFacebook>(() => _i94.SignInWithFacebook(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i95.SignInWithGoogle>(() => _i95.SignInWithGoogle(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i96.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i96.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i28.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i97.SplashBloc>(
      () => _i97.SplashBloc(getWalletUser: get<_i56.GetWalletUser>()));
  gh.lazySingleton<_i98.StripeRefund>(() => _i98.StripeRefund(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i99.StripeRefundBloc>(
      () => _i99.StripeRefundBloc(stripeRefund: get<_i98.StripeRefund>()));
  gh.lazySingleton<_i100.TopUpViaStripe>(() => _i100.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i101.TopupViaStripeBloc>(() =>
      _i101.TopupViaStripeBloc(topUpViaStripe: get<_i100.TopUpViaStripe>()));
  gh.lazySingleton<_i102.TransactionRemoteDataSource>(() =>
      _i102.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i103.TransactionRepository>(() =>
      _i104.TransactionRepositoryImpl(
          dataSource: get<_i102.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i105.UpdateAcadamicInfo>(() => _i105.UpdateAcadamicInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i106.UpdateAddressInfo>(() => _i106.UpdateAddressInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i107.UpdateKycInfo>(() => _i107.UpdateKycInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i108.UpdateOtherInfo>(() => _i108.UpdateOtherInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i109.UpdatePersonalInfo>(() => _i109.UpdatePersonalInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i110.UpdateQualificationInfo>(() => _i110.UpdateQualificationInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i111.UpdateResumeImage>(() => _i111.UpdateResumeImage(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i112.UpdateWorkInfo>(() => _i112.UpdateWorkInfo(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i113.UtilityPaymentDataSource>(() =>
      _i113.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i114.UtilityPaymentRepository>(() =>
      _i115.UtilityPaymentRepositoryImpl(
          dataSource: get<_i113.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i116.VerifyCoupon>(() => _i116.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i39.CouponRepository>()));
  gh.factory<_i117.VerifyCouponBloc>(
      () => _i117.VerifyCouponBloc(verifyCoupon: get<_i116.VerifyCoupon>()));
  gh.lazySingleton<_i118.VerifyEmail>(() => _i118.VerifyEmail(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i119.VerifyEmailBloc>(
      () => _i119.VerifyEmailBloc(verifyEmail: get<_i118.VerifyEmail>()));
  gh.lazySingleton<_i120.VerifyEsewaTopup>(() => _i120.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i121.VerifyEsewaTopupBloc>(() => _i121.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i120.VerifyEsewaTopup>()));
  gh.lazySingleton<_i122.VerifyImePayTopup>(() => _i122.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i123.VerifyImePayTopupBloc>(() => _i123.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i122.VerifyImePayTopup>()));
  gh.lazySingleton<_i124.VerifyKhaltiTopup>(() => _i124.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i125.VerifyKhaltiTopupBloc>(() => _i125.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i124.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i126.VerifyPhone>(() => _i126.VerifyPhone(
      repository: get<_i28.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i127.VerifyPhoneBloc>(() => _i127.VerifyPhoneBloc(
      verifyPhone: get<_i126.VerifyPhone>(),
      requestPhoneOtp: get<_i81.RequestPhoneOtp>()));
  gh.lazySingleton<_i128.VerifyPrabhuPayTopup>(() => _i128.VerifyPrabhuPayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i129.VerifyPrabhuPayTopupBloc>(() =>
      _i129.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: get<_i128.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i130.AdsRemoteDataSource>(() =>
      _i130.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i131.AdsRepository>(() =>
      _i132.AdsRepositoryImpl(dataSource: get<_i130.AdsRemoteDataSource>()));
  gh.lazySingleton<_i133.AppUpdateRemoteDataSource>(() =>
      _i133.AppUpdateRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i26.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i134.AppUpdateRepository>(() =>
      _i135.AppUpdateRepositoryImpl(
          dataSource: get<_i133.AppUpdateRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i136.ApplyCoupon>(() => _i136.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i39.CouponRepository>()));
  gh.factory<_i137.ChangePasswordBloc>(
      () => _i137.ChangePasswordBloc(get<_i33.ChangePasswordUseCase>()));
  gh.factory<_i138.ContactUsBloc>(
      () => _i138.ContactUsBloc(get<_i37.ContactUsUseCase>()));
  gh.lazySingleton<_i139.DeleteCard>(() => _i139.DeleteCard(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i64.LoadBalanceRepositories>()));
  gh.factory<_i140.DeleteCardBloc>(
      () => _i140.DeleteCardBloc(deleteCard: get<_i139.DeleteCard>()));
  gh.factory<_i141.DeleteResumeData>(() => _i141.DeleteResumeData(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i142.EnquireKhanepani>(() => _i142.EnquireKhanepani(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i143.EnquiryISP>(() => _i143.EnquiryISP(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i144.EnquiryNea>(() => _i144.EnquiryNea(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i145.EnquiryTv>(() => _i145.EnquiryTv(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i146.GetAds>(() => _i146.GetAds(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i131.AdsRepository>()));
  gh.factory<_i147.GetAlertPlacesBloc>(
      () => _i147.GetAlertPlacesBloc(get<_i44.GetAlertsPlaces>()));
  gh.lazySingleton<_i148.GetAppUpdate>(() => _i148.GetAppUpdate(
      repository: get<_i134.AppUpdateRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i149.GetCountries>(() => _i149.GetCountries(
      repository: get<_i67.LocationInformationRepositoryProtocol>()));
  gh.factory<_i150.GetDisasterDetailBloc>(() => _i150.GetDisasterDetailBloc(
      getEarthquakes: get<_i49.GetEarthquakes>(),
      getVolcanoes: get<_i54.GetVolcanoes>()));
  gh.factory<_i151.GetDownloadablePdfLink>(() => _i151.GetDownloadablePdfLink(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i152.GetFavouriteNews>(() =>
      _i152.GetFavouriteNews(repository: get<_i72.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i153.GetHomePageData>(() => _i153.GetHomePageData(
      repository: get<_i60.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i154.GetIndivisualTransaction>(() =>
      _i154.GetIndivisualTransaction(
          repository: get<_i103.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i155.GetKhanepaniOffices>(() => _i155.GetKhanepaniOffices(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i156.GetLatestNews>(() => _i156.GetLatestNews(
      repository: get<_i72.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i157.GetListOfCityFromPrefectures>(() =>
      _i157.GetListOfCityFromPrefectures(
          repository: get<_i67.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i158.GetListOfPaymentMethods>(() =>
      _i158.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i64.LoadBalanceRepositories>()));
  gh.lazySingleton<_i159.GetNeaOffice>(() => _i159.GetNeaOffice(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i160.GetNewsForYou>(() => _i160.GetNewsForYou(
      repository: get<_i72.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i161.GetNewsGenre>(
      () => _i161.GetNewsGenre(repository: get<_i72.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i162.GetNewsPreferences>(() =>
      _i162.GetNewsPreferences(repository: get<_i72.NewsRepositoryProtocol>()));
  gh.factory<_i163.GetPaymentMethodsBloc>(() => _i163.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i158.GetListOfPaymentMethods>(),
      deletecard: get<_i139.DeleteCard>()));
  gh.lazySingleton<_i164.GetPrefectureCityFromPostalCode>(() =>
      _i164.GetPrefectureCityFromPostalCode(
          repository: get<_i67.LocationInformationRepositoryProtocol>()));
  gh.factory<_i165.GetResume>(() => _i165.GetResume(
      repository: get<_i84.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i166.GetSearchPageData>(() => _i166.GetSearchPageData(
      repository: get<_i88.SearchRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i167.GetSubscriptionDetailForPartnerService>(() =>
      _i167.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i168.GetTransactions>(() => _i168.GetTransactions(
      repository: get<_i103.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i169.HomePageDataBloc>(() =>
      _i169.HomePageDataBloc(getHomePageData: get<_i153.GetHomePageData>()));
  gh.factory<_i170.IndividualTransactionBloc>(() =>
      _i170.IndividualTransactionBloc(
          getIndividualTxn: get<_i154.GetIndivisualTransaction>()));
  gh.lazySingleton<_i171.JapaneseMannerRepository>(() =>
      _i172.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i62.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i173.KhanepaniOfficesBloc>(
      () => _i173.KhanepaniOfficesBloc(get<_i155.GetKhanepaniOffices>()));
  gh.lazySingleton<_i174.LatestNewsBloc>(
      () => _i174.LatestNewsBloc(getNews: get<_i156.GetLatestNews>()));
  gh.factory<_i175.LocationViaPostalCodeBloc>(() =>
      _i175.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i164.GetPrefectureCityFromPostalCode>()));
  gh.factory<_i176.NeaOfficesBloc>(
      () => _i176.NeaOfficesBloc(get<_i159.GetNeaOffice>()));
  gh.lazySingleton<_i177.NewsBloc>(
      () => _i177.NewsBloc(getNews: get<_i160.GetNewsForYou>()));
  gh.factory<_i178.NewsGenreBloc>(
      () => _i178.NewsGenreBloc(getNewsGenre: get<_i161.GetNewsGenre>()));
  gh.factory<_i179.NewsPreferenceBloc>(() => _i179.NewsPreferenceBloc(
      getNewsPreferences: get<_i162.GetNewsPreferences>()));
  gh.lazySingleton<_i180.NotificationRepository>(() =>
      _i181.NotificationRepositoryImpl(
          dataSource: get<_i74.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i182.ParnterServicesBloc>(() => _i182.ParnterServicesBloc(
      getPartnerServices: get<_i183.GetPartnerServices>()));
  gh.factory<_i184.PartnerServiceCategoriesBloc>(() =>
      _i184.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i185.GetPartnerServicesCategories>()));
  gh.factory<_i186.PasswordResetBloc>(() => _i186.PasswordResetBloc(
      resetPasswordUseCase: get<_i82.ResetPasswordUseCase>()));
  gh.lazySingleton<_i187.PayISP>(() => _i187.PayISP(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i188.PayKhanepani>(() => _i188.PayKhanepani(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i189.PayNea>(() => _i189.PayNea(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i190.PayTv>(() => _i190.PayTv(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i114.UtilityPaymentRepository>()));
  gh.lazySingleton<_i191.PurchaseSubscriptionFromPartnerService>(() =>
      _i191.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i114.UtilityPaymentRepository>()));
  gh.factory<_i192.RedeemCouponBloc>(() => _i192.RedeemCouponBloc(
      applyCoupon: get<_i136.ApplyCoupon>(),
      redeemCoupon: get<_i80.RedeemCoupon>()));
  gh.lazySingleton<_i193.ResumeWatcherBloc>(() => _i193.ResumeWatcherBloc(
      getResume: get<_i165.GetResume>(),
      deleteResumeData: get<_i141.DeleteResumeData>()));
  gh.lazySingleton<_i194.RewardPointRepository>(() =>
      _i195.RewardPointRepositoryImpl(
          dataSource: get<_i86.RewardPointsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i196.SearchBloc>(
      () => _i196.SearchBloc(get<_i166.GetSearchPageData>()));
  gh.factory<_i197.SignInFormBloc>(() => _i197.SignInFormBloc(
      signInWithEmailUsecase: get<_i93.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i92.SignInWithApple>(),
      signInWithFacebook: get<_i94.SignInWithFacebook>(),
      signInWithGoogle: get<_i95.SignInWithGoogle>()));
  gh.factory<_i198.SignUpFormBloc>(() => _i198.SignUpFormBloc(
      signUpWithEmailUsecase: get<_i96.SignUpWithEmailPasswordAndUserDetail>(),
      signInWithApple: get<_i92.SignInWithApple>(),
      signInWithFacebook: get<_i94.SignInWithFacebook>(),
      signInWithGoogle: get<_i95.SignInWithGoogle>()));
  gh.factory<_i199.SubscriptionForPartnerServiceBloc>(() =>
      _i199.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i167.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i191.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i200.TopUpBalanceForMobile>(() =>
      _i200.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i114.UtilityPaymentRepository>()));
  gh.factory<_i201.TopUpBalanceInMobileBloc>(() =>
      _i201.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i200.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i202.TransactionBloc>(() =>
      _i202.TransactionBloc(getTransaction: get<_i168.GetTransactions>()));
  gh.factory<_i203.TvPaymentBloc>(
      () => _i203.TvPaymentBloc(get<_i190.PayTv>(), get<_i145.EnquiryTv>()));
  gh.factory<_i204.UpdateProfileBloc>(() => _i204.UpdateProfileBloc(
      updateKycInfo: get<_i107.UpdateKycInfo>(),
      updateResumeImage: get<_i111.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i157.GetListOfCityFromPrefectures>()));
  gh.factory<_i205.AdsBloc>(() =>
      _i205.AdsBloc(get<_i146.GetAds>(), get<_i130.AdsRemoteDataSource>()));
  gh.lazySingleton<_i206.AppUpdateBloc>(
      () => _i206.AppUpdateBloc(get<_i148.GetAppUpdate>()));
  gh.factory<_i207.DownloadPdfBloc>(() => _i207.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i151.GetDownloadablePdfLink>()));
  gh.factory<_i208.FavouriteNewsBloc>(() =>
      _i208.FavouriteNewsBloc(getFavouriteNews: get<_i152.GetFavouriteNews>()));
  gh.lazySingleton<_i209.GetNotifications>(() => _i209.GetNotifications(
      repository: get<_i180.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i210.GetRewardPoints>(() => _i210.GetRewardPoints(
      repository: get<_i194.RewardPointRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i211.ISPPaymentBloc>(
      () => _i211.ISPPaymentBloc(get<_i187.PayISP>(), get<_i143.EnquiryISP>()));
  gh.factory<_i212.JapaneseMannerBloc>(() => _i212.JapaneseMannerBloc(
      getJapaneseManner: get<_i213.GetJapaneseManner>()));
  gh.factory<_i214.JapaneseMannerCategoriesBloc>(() =>
      _i214.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i215.GetJapaneseMannerCategories>()));
  gh.factory<_i216.JapaneseMannerDetailBloc>(() =>
      _i216.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i217.GetJapaneseMannerDetail>()));
  gh.factory<_i218.KhanepaniPaymentBloc>(() => _i218.KhanepaniPaymentBloc(
      get<_i142.EnquireKhanepani>(), get<_i188.PayKhanepani>()));
  gh.factory<_i219.NeaPaymentBloc>(
      () => _i219.NeaPaymentBloc(get<_i144.EnquiryNea>(), get<_i189.PayNea>()));
  gh.factory<_i220.NotificationsBloc>(() =>
      _i220.NotificationsBloc(getNotifications: get<_i209.GetNotifications>()));
  gh.factory<_i221.RewardPointBloc>(() =>
      _i221.RewardPointBloc(getRewardPoints: get<_i210.GetRewardPoints>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i222.DBProvider>(_i222.DBProviderImpl());
  gh.singleton<_i71.NewsLocalProvider>(
      _i71.NewsLocalProviderImpl(provider: get<_i222.DBProvider>()));
  gh.singleton<_i79.PurchasePackage>(_i79.PurchasePackage(
      repository: get<_i76.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i223.GetAlertLocationBloc>(
      _i223.GetAlertLocationBloc(get<_i51.GetPlaceFromGPS>()));
  gh.singleton<_i183.GetPartnerServices>(_i183.GetPartnerServices(
      repository: get<_i76.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i185.GetPartnerServicesCategories>(
      _i185.GetPartnerServicesCategories(
          repository: get<_i76.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i213.GetJapaneseManner>(_i213.GetJapaneseManner(
      repository: get<_i171.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i215.GetJapaneseMannerCategories>(
      _i215.GetJapaneseMannerCategories(
          repository: get<_i171.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i217.GetJapaneseMannerDetail>(_i217.GetJapaneseMannerDetail(
      repository: get<_i171.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i224.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i225.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i226.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i227.DataConnectionCheckerModule {}

class _$ShareBNPJStorageModule extends _i228.ShareBNPJStorageModule {}

class _$SharedPreferenceModule extends _i229.SharedPreferenceModule {}
