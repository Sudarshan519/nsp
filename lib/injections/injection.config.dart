// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i12;
import 'package:shared_data/shared_data.dart' as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../core/database/local_database_provider.dart' as _i5;
import '../core/database/news_provider.dart' as _i16;
import '../core/file_picker/file_provider.dart' as _i7;
import '../core/geo_location/geo_location.dart' as _i9;
import '../core/logger/logger.dart' as _i14;
import '../core/network/newtork_info.dart' as _i15;
import '../core/notification/push_notification_manager.dart' as _i19;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i131;
import '../features/ads/data/repository/ads_repository.dart' as _i133;
import '../features/ads/domain/repositories/ads_repository.dart' as _i132;
import '../features/ads/domain/use_case/get_ads.dart' as _i147;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i207;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i25;
import '../features/alerts/data/repository/alert_repository.dart' as _i27;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i26;
import '../features/alerts/domain/usecase/get_alert_places.dart' as _i46;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i44;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i51;
import '../features/alerts/domain/usecase/get_place_from_gps.dart' as _i53;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i56;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i59;
import '../features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart'
    as _i148;
import '../features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart'
    as _i149;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i45;
import '../features/alerts/presentation/get_disaster_detail/get_disaster_detail_bloc.dart'
    as _i152;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i52;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i57;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i60;
import '../features/app_update/data/data_source/app_update_remote_data_source.dart'
    as _i134;
import '../features/app_update/data/repository/app_update_repository.dart'
    as _i136;
import '../features/app_update/domain/repository/app_update_repository.dart'
    as _i135;
import '../features/app_update/domain/use_case/get_app_update.dart' as _i150;
import '../features/app_update/presentation/app_update/app_update_bloc.dart'
    as _i208;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i28;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i29;
import '../features/auth/data/repository/auth_repository.dart' as _i31;
import '../features/auth/domain/repositories/auth_repository.dart' as _i30;
import '../features/auth/domain/usecase/change_password.dart' as _i35;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i58;
import '../features/auth/domain/usecase/logout_user.dart' as _i71;
import '../features/auth/domain/usecase/request_phone_otp.dart' as _i82;
import '../features/auth/domain/usecase/reset_password.dart' as _i83;
import '../features/auth/domain/usecase/set_mpin.dart' as _i91;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i93;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i94;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i95;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i96;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i97;
import '../features/auth/domain/usecase/verify_email.dart' as _i119;
import '../features/auth/domain/usecase/verify_phone.dart' as _i127;
import '../features/auth/presentation/password/change_password/change_password_bloc.dart'
    as _i138;
import '../features/auth/presentation/password/password_reset/password_reset_bloc.dart'
    as _i188;
import '../features/auth/presentation/security/mpin/set_mpin_bloc.dart' as _i92;
import '../features/auth/presentation/security/verify_phone/verify_phone_bloc.dart'
    as _i128;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i199;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i200;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i120;
import '../features/contact_us/data/data_source/contact_us_remote_data_surce.dart'
    as _i36;
import '../features/contact_us/data/repository/contact_us_remoritory.dart'
    as _i38;
import '../features/contact_us/domain/repository/contact_us_repository.dart'
    as _i37;
import '../features/contact_us/domain/use_case/contact_us.dart' as _i39;
import '../features/contact_us/presentation/contact_us/contact_us_bloc.dart'
    as _i139;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i40;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i42;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i41;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i137;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i49;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i81;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i117;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i50;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i194;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i118;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i61;
import '../features/home/data/repositories/home_repository.dart' as _i63;
import '../features/home/domain/repositories/home_repository.dart' as _i62;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i155;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i173;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i64;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i176;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i175;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i211;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i212;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i213;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i217;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i218;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i219;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i65;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i67;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i66;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i140;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i160;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i99;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i101;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i121;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i123;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i125;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i129;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i141;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i6;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i122;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i167;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i124;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i13;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i126;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i18;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i130;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i100;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i102;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i68;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i70;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i69;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i151;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i159;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i168;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i179;
import '../features/news/data/datasource/news_local_data_source.dart' as _i72;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i17;
import '../features/news/data/repository/news_repository.dart' as _i74;
import '../features/news/domain/repository/news_repository.dart' as _i73;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i154;
import '../features/news/domain/usecase/get_latest_news.dart' as _i158;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i162;
import '../features/news/domain/usecase/get_news_genre.dart' as _i163;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i164;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i210;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i178;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i181;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i182;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i183;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i75;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i185;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i184;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i214;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i222;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i76;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i78;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i77;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i165;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i166;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i79;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i186;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i187;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i80;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i32;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i34;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i33;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i47;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i48;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i206;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i84;
import '../features/resume/data/repository/resume_repository.dart' as _i86;
import '../features/resume/domain/repository/resume_repository.dart' as _i85;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i142;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i153;
import '../features/resume/domain/usecases/get_resume.dart' as _i169;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i106;
import '../features/resume/domain/usecases/update_address_info.dart' as _i107;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i108;
import '../features/resume/domain/usecases/update_other_info.dart' as _i109;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i110;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i111;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i112;
import '../features/resume/domain/usecases/update_work_info.dart' as _i113;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i209;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i195;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i87;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i197;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i196;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i215;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i223;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i88;
import '../features/search/data/repository/search_repository.dart' as _i90;
import '../features/search/domain/repositories/search_repository.dart' as _i89;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i170;
import '../features/search/presentation/bloc/search_bloc.dart' as _i198;
import '../features/splash/presentation/splash_bloc.dart' as _i98;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i103;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i105;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i104;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i156;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i172;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i174;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i204;
import '../features/user_device/data/data_source/user_device_remote_data_source.dart'
    as _i22;
import '../features/user_device/data/repository/user_device_repository.dart'
    as _i24;
import '../features/user_device/domain/repository/user_device_repository.dart'
    as _i23;
import '../features/user_device/domain/use_case/delete_user_device.dart'
    as _i43;
import '../features/user_device/domain/use_case/get_user_devices.dart' as _i54;
import '../features/user_device/presentation/get_user_devices/get_user_devices_bloc.dart'
    as _i55;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i114;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i116;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i115;
import '../features/utility_payments/domain/usecases/electicity/enquiry_nea.dart'
    as _i145;
import '../features/utility_payments/domain/usecases/electicity/get_nea_offices.dart'
    as _i161;
import '../features/utility_payments/domain/usecases/electicity/pay_nea.dart'
    as _i191;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i171;
import '../features/utility_payments/domain/usecases/isp/enquiry_isp.dart'
    as _i144;
import '../features/utility_payments/domain/usecases/isp/pay_isp.dart' as _i189;
import '../features/utility_payments/domain/usecases/khanepani/enquiry_khanepani.dart'
    as _i143;
import '../features/utility_payments/domain/usecases/khanepani/get_khanepani_offices.dart'
    as _i157;
import '../features/utility_payments/domain/usecases/khanepani/pay_khanepani.dart'
    as _i190;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i193;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i202;
import '../features/utility_payments/domain/usecases/tv/enquiry_tv.dart'
    as _i146;
import '../features/utility_payments/domain/usecases/tv/pay_tv.dart' as _i192;
import '../features/utility_payments/presentation/electricity/bloc/nea_payment_bloc.dart'
    as _i221;
import '../features/utility_payments/presentation/electricity/nea_offices/nea_offices_bloc.dart'
    as _i180;
import '../features/utility_payments/presentation/isp/isp_payment_bloc.dart'
    as _i216;
import '../features/utility_payments/presentation/khanepani/bloc/khanepani_payment_bloc.dart'
    as _i220;
import '../features/utility_payments/presentation/khanepani/khanepani_offices/khanepani_offices_bloc.dart'
    as _i177;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i201;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i203;
import '../features/utility_payments/presentation/tv/tv_payment_bloc.dart'
    as _i205;
import '../utils/config_reader.dart' as _i4;
import 'injectable/data_connection_checker_injectable_module.dart' as _i226;
import 'injectable/flutter_secure_storage_module.dart' as _i228;
import 'injectable/google_login_injectable_module.dart' as _i229;
import 'injectable/http_client_injectable_module.dart' as _i224;
import 'injectable/shared_bnpj_storage_module.dart' as _i227;
import 'injectable/shared_preference_module.dart' as _i225;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final flutterStorageModule = _$FlutterStorageModule();
  final googleLoginInjectableModule = _$GoogleLoginInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final shareBNPJStorageModule = _$ShareBNPJStorageModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.lazySingleton<_i3.Client>(() => httpClientInjectableModule.client);
  gh.singleton<_i4.ConfigReader>(_i4.ConfigReaderImpl());
  gh.singleton<_i5.DBProvider>(_i5.DBProviderImpl());
  gh.factory<_i6.EsewaFormCubit>(() => _i6.EsewaFormCubit());
  gh.lazySingleton<_i7.FileProvider>(() => _i7.FileProvider());
  gh.lazySingleton<_i8.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i9.GeoLocationManager>(() => _i9.GeoLocationManager());
  gh.lazySingleton<_i10.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i11.ImePayFormCubit>(() => _i11.ImePayFormCubit());
  gh.lazySingleton<_i12.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.factory<_i13.KhaltiFormCubit>(() => _i13.KhaltiFormCubit());
  gh.lazySingleton<_i14.Logger>(() => _i14.LoggerImpl(
        client: gh<_i3.Client>(),
        config: gh<_i4.ConfigReader>(),
      ));
  gh.lazySingleton<_i15.NetworkInfo>(() => _i15.NetworkInfoImpl(
      dataConnectionChecker: gh<_i12.InternetConnectionChecker>()));
  gh.singleton<_i16.NewsLocalProvider>(
      _i16.NewsLocalProviderImpl(provider: gh<_i5.DBProvider>()));
  gh.lazySingleton<_i17.NewsRemoteDataSourceProtocol>(
      () => _i17.NewsRemoteDataSource(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.factory<_i18.PrabhuPayFormCubit>(() => _i18.PrabhuPayFormCubit());
  gh.lazySingleton<_i19.PushNotificationManager>(
      () => _i19.PushNotificationManager());
  gh.factory<_i20.SharedData>(() => shareBNPJStorageModule.data);
  await gh.factoryAsync<_i21.SharedPreferences>(
    () => sharedPreferenceModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i22.UserDeviceRemoteDataSource>(
      () => _i22.UserDeviceRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i23.UserDeviceRepository>(
      () => _i24.UserDeviceRepositoryImpl(
            gh<_i22.UserDeviceRemoteDataSource>(),
            gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i25.AlertRemoteDataSource>(
      () => _i25.AlertRemoteDataSourceImpl(
            logger: gh<_i14.Logger>(),
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
          ));
  gh.lazySingleton<_i26.AlertRepository>(() => _i27.AlertRepositoryImpl(
        dataSource: gh<_i25.AlertRemoteDataSource>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i28.AuthLocalDataSource>(() => _i28.AuthLocalDataSourceImpl(
        secureStorage: gh<_i8.FlutterSecureStorage>(),
        preferences: gh<_i21.SharedPreferences>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i29.AuthRemoteDataSource>(
      () => _i29.AuthRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i30.AuthRepository>(() => _i31.AuthRepositoryImpl(
        remoteDataSource: gh<_i29.AuthRemoteDataSource>(),
        localDataSource: gh<_i28.AuthLocalDataSource>(),
        bnpjSharedData: gh<_i20.SharedData>(),
        googleSignIn: gh<_i10.GoogleSignIn>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i32.BalanceRemoteDataSource>(
      () => _i32.BalanceRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i33.BalanceRepository>(() => _i34.BalanceRepositoryImpl(
        dataSource: gh<_i32.BalanceRemoteDataSource>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i35.ChangePasswordUseCase>(() => _i35.ChangePasswordUseCase(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i36.ContactUsRemoteDataSource>(
      () => _i36.ContactUsRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i37.ContactUsRepository>(() => _i38.ContactUsRepositoryImpl(
      dataSource: gh<_i36.ContactUsRemoteDataSource>()));
  gh.lazySingleton<_i39.ContactUsUseCase>(() => _i39.ContactUsUseCase(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i37.ContactUsRepository>(),
      ));
  gh.lazySingleton<_i40.CouponRemoteDataSource>(
      () => _i40.CouponRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i41.CouponRepository>(() =>
      _i42.CouponRepositoryImpl(dataSource: gh<_i40.CouponRemoteDataSource>()));
  gh.lazySingleton<_i43.DeleteDevice>(() => _i43.DeleteDevice(
        repository: gh<_i23.UserDeviceRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i44.GetAlerts>(() => _i44.GetAlerts(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i45.GetAlertsBloc>(
      () => _i45.GetAlertsBloc(getAlerts: gh<_i44.GetAlerts>()));
  gh.lazySingleton<_i46.GetAlertsPlaces>(() => _i46.GetAlertsPlaces(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i47.GetBalance>(() => _i47.GetBalance(
        repository: gh<_i33.BalanceRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i48.GetBalanceBloc>(
      () => _i48.GetBalanceBloc(getBalance: gh<_i47.GetBalance>()));
  gh.lazySingleton<_i49.GetCouponList>(() => _i49.GetCouponList(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i41.CouponRepository>(),
      ));
  gh.factory<_i50.GetCouponListBloc>(
      () => _i50.GetCouponListBloc(getCouponList: gh<_i49.GetCouponList>()));
  gh.lazySingleton<_i51.GetEarthquakes>(() => _i51.GetEarthquakes(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i52.GetEarthquakesBloc>(
      () => _i52.GetEarthquakesBloc(getEarthquakes: gh<_i51.GetEarthquakes>()));
  gh.lazySingleton<_i53.GetPlaceFromGPS>(() => _i53.GetPlaceFromGPS(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i54.GetUserDevices>(() => _i54.GetUserDevices(
        repository: gh<_i23.UserDeviceRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i55.GetUserDevicesBloc>(() => _i55.GetUserDevicesBloc(
        gh<_i54.GetUserDevices>(),
        gh<_i43.DeleteDevice>(),
      ));
  gh.lazySingleton<_i56.GetVolcanoes>(() => _i56.GetVolcanoes(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i57.GetVolcanoesBloc>(
      () => _i57.GetVolcanoesBloc(getVolcanoes: gh<_i56.GetVolcanoes>()));
  gh.lazySingleton<_i58.GetWalletUser>(
      () => _i58.GetWalletUser(repository: gh<_i30.AuthRepository>()));
  gh.lazySingleton<_i59.GetWeathers>(() => _i59.GetWeathers(
        repository: gh<_i26.AlertRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i60.GetWeathersBloc>(
      () => _i60.GetWeathersBloc(getWeathers: gh<_i59.GetWeathers>()));
  gh.lazySingleton<_i61.HomePageRemoteDataSource>(
      () => _i61.HomePageRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i62.HomeReporisitory>(() => _i63.HomeRepositoryImpl(
        remoteDataSource: gh<_i61.HomePageRemoteDataSource>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i64.JapaneseMannersRemoteDataSource>(
      () => _i64.JapaneseMannersRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i65.LoadBalanceDataSource>(
      () => _i65.LoadBalanceDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i66.LoadBalanceRepositories>(() =>
      _i67.LoadBalanceRepositoriesImpl(
          dataSource: gh<_i65.LoadBalanceDataSource>()));
  gh.lazySingleton<_i68.LocationInformationLocalDataSourceProtocol>(
      () => _i68.LocationInformationLocalDataSource(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i69.LocationInformationRepositoryProtocol>(
      () => _i70.LocationInformationRepository(
            dataSource: gh<_i68.LocationInformationLocalDataSourceProtocol>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i71.LogoutUser>(
      () => _i71.LogoutUser(repository: gh<_i30.AuthRepository>()));
  gh.lazySingleton<_i72.NewsLocalDataSourceProtocol>(
      () => _i72.NewsLocalDataSource(
            localProvider: gh<_i16.NewsLocalProvider>(),
            preferences: gh<_i21.SharedPreferences>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i73.NewsRepositoryProtocol>(() => _i74.NewsRepository(
        remoteDataSource: gh<_i17.NewsRemoteDataSourceProtocol>(),
        localDataSource: gh<_i72.NewsLocalDataSourceProtocol>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i75.NotificationsRemoteDataSource>(
      () => _i75.NotificationsRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i76.PartnerServicesRemoteDataSource>(
      () => _i76.PartnerServicesRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            config: gh<_i4.ConfigReader>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i77.PartnerServicesRepository>(
      () => _i78.PartnerServicesRepositoryImpl(
            remoteDataSource: gh<_i76.PartnerServicesRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.singleton<_i79.PurchasePackage>(_i79.PurchasePackage(
    repository: gh<_i77.PartnerServicesRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.factory<_i80.PurchasePackageBloc>(() =>
      _i80.PurchasePackageBloc(purchasePackage: gh<_i79.PurchasePackage>()));
  gh.lazySingleton<_i81.RedeemCoupon>(() => _i81.RedeemCoupon(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i41.CouponRepository>(),
      ));
  gh.lazySingleton<_i82.RequestPhoneOtp>(() => _i82.RequestPhoneOtp(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i83.ResetPasswordUseCase>(() => _i83.ResetPasswordUseCase(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i84.ResumeRemoteDataSource>(
      () => _i84.ResumeRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i85.ResumeRepository>(() => _i86.ResumeRepositoryImpl(
        dataSource: gh<_i84.ResumeRemoteDataSource>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i87.RewardPointsRemoteDataSource>(
      () => _i87.RewardPointsRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i88.SearchPageRemoteDataSource>(
      () => _i88.SearchPageRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i89.SearchRepository>(() => _i90.SearchRepositoryImpl(
        dataSource: gh<_i88.SearchPageRemoteDataSource>(),
        logger: gh<_i14.Logger>(),
      ));
  gh.lazySingleton<_i91.SetMpin>(() => _i91.SetMpin(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i92.SetMpinBloc>(() => _i92.SetMpinBloc(gh<_i91.SetMpin>()));
  gh.lazySingleton<_i93.SignInWithApple>(() => _i93.SignInWithApple(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i94.SignInWithEmailAndPassword>(
      () => _i94.SignInWithEmailAndPassword(
            repository: gh<_i30.AuthRepository>(),
            networkInfo: gh<_i15.NetworkInfo>(),
          ));
  gh.lazySingleton<_i95.SignInWithFacebook>(() => _i95.SignInWithFacebook(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i96.SignInWithGoogle>(() => _i96.SignInWithGoogle(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i97.SignUpWithEmailPasswordAndUserDetail>(
      () => _i97.SignUpWithEmailPasswordAndUserDetail(
            repository: gh<_i30.AuthRepository>(),
            networkInfo: gh<_i15.NetworkInfo>(),
          ));
  gh.factory<_i98.SplashBloc>(
      () => _i98.SplashBloc(getWalletUser: gh<_i58.GetWalletUser>()));
  gh.lazySingleton<_i99.StripeRefund>(() => _i99.StripeRefund(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i100.StripeRefundBloc>(
      () => _i100.StripeRefundBloc(stripeRefund: gh<_i99.StripeRefund>()));
  gh.lazySingleton<_i101.TopUpViaStripe>(() => _i101.TopUpViaStripe(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i102.TopupViaStripeBloc>(() =>
      _i102.TopupViaStripeBloc(topUpViaStripe: gh<_i101.TopUpViaStripe>()));
  gh.lazySingleton<_i103.TransactionRemoteDataSource>(
      () => _i103.TransactionRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i104.TransactionRepository>(
      () => _i105.TransactionRepositoryImpl(
            dataSource: gh<_i103.TransactionRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.factory<_i106.UpdateAcadamicInfo>(() => _i106.UpdateAcadamicInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i107.UpdateAddressInfo>(() => _i107.UpdateAddressInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i108.UpdateKycInfo>(() => _i108.UpdateKycInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i109.UpdateOtherInfo>(() => _i109.UpdateOtherInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i110.UpdatePersonalInfo>(() => _i110.UpdatePersonalInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i111.UpdateQualificationInfo>(() => _i111.UpdateQualificationInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i112.UpdateResumeImage>(() => _i112.UpdateResumeImage(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i113.UpdateWorkInfo>(() => _i113.UpdateWorkInfo(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i114.UtilityPaymentDataSource>(
      () => _i114.UtilityPaymentDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i115.UtilityPaymentRepository>(() =>
      _i116.UtilityPaymentRepositoryImpl(
          dataSource: gh<_i114.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i117.VerifyCoupon>(() => _i117.VerifyCoupon(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i41.CouponRepository>(),
      ));
  gh.factory<_i118.VerifyCouponBloc>(
      () => _i118.VerifyCouponBloc(verifyCoupon: gh<_i117.VerifyCoupon>()));
  gh.lazySingleton<_i119.VerifyEmail>(() => _i119.VerifyEmail(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i120.VerifyEmailBloc>(
      () => _i120.VerifyEmailBloc(verifyEmail: gh<_i119.VerifyEmail>()));
  gh.lazySingleton<_i121.VerifyEsewaTopup>(() => _i121.VerifyEsewaTopup(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i122.VerifyEsewaTopupBloc>(() => _i122.VerifyEsewaTopupBloc(
      verifyEsewaTopup: gh<_i121.VerifyEsewaTopup>()));
  gh.lazySingleton<_i123.VerifyImePayTopup>(() => _i123.VerifyImePayTopup(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i124.VerifyImePayTopupBloc>(() => _i124.VerifyImePayTopupBloc(
      verifyImePayTopup: gh<_i123.VerifyImePayTopup>()));
  gh.lazySingleton<_i125.VerifyKhaltiTopup>(() => _i125.VerifyKhaltiTopup(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i126.VerifyKhaltiTopupBloc>(() => _i126.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: gh<_i125.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i127.VerifyPhone>(() => _i127.VerifyPhone(
        repository: gh<_i30.AuthRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i128.VerifyPhoneBloc>(() => _i128.VerifyPhoneBloc(
        verifyPhone: gh<_i127.VerifyPhone>(),
        requestPhoneOtp: gh<_i82.RequestPhoneOtp>(),
      ));
  gh.lazySingleton<_i129.VerifyPrabhuPayTopup>(() => _i129.VerifyPrabhuPayTopup(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i130.VerifyPrabhuPayTopupBloc>(() =>
      _i130.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: gh<_i129.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i131.AdsRemoteDataSource>(
      () => _i131.AdsRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i132.AdsRepository>(() =>
      _i133.AdsRepositoryImpl(dataSource: gh<_i131.AdsRemoteDataSource>()));
  gh.lazySingleton<_i134.AppUpdateRemoteDataSource>(
      () => _i134.AppUpdateRemoteDataSourceImpl(
            client: gh<_i3.Client>(),
            config: gh<_i4.ConfigReader>(),
            auth: gh<_i28.AuthLocalDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i135.AppUpdateRepository>(
      () => _i136.AppUpdateRepositoryImpl(
            dataSource: gh<_i134.AppUpdateRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.lazySingleton<_i137.ApplyCoupon>(() => _i137.ApplyCoupon(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i41.CouponRepository>(),
      ));
  gh.factory<_i138.ChangePasswordBloc>(
      () => _i138.ChangePasswordBloc(gh<_i35.ChangePasswordUseCase>()));
  gh.factory<_i139.ContactUsBloc>(
      () => _i139.ContactUsBloc(gh<_i39.ContactUsUseCase>()));
  gh.lazySingleton<_i140.DeleteCard>(() => _i140.DeleteCard(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i66.LoadBalanceRepositories>(),
      ));
  gh.factory<_i141.DeleteCardBloc>(
      () => _i141.DeleteCardBloc(deleteCard: gh<_i140.DeleteCard>()));
  gh.factory<_i142.DeleteResumeData>(() => _i142.DeleteResumeData(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i143.EnquireKhanepani>(() => _i143.EnquireKhanepani(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i144.EnquiryISP>(() => _i144.EnquiryISP(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i145.EnquiryNea>(() => _i145.EnquiryNea(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i146.EnquiryTv>(() => _i146.EnquiryTv(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i147.GetAds>(() => _i147.GetAds(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i132.AdsRepository>(),
      ));
  gh.singleton<_i148.GetAlertLocationBloc>(
      _i148.GetAlertLocationBloc(gh<_i53.GetPlaceFromGPS>()));
  gh.factory<_i149.GetAlertPlacesBloc>(
      () => _i149.GetAlertPlacesBloc(gh<_i46.GetAlertsPlaces>()));
  gh.lazySingleton<_i150.GetAppUpdate>(() => _i150.GetAppUpdate(
        repository: gh<_i135.AppUpdateRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i151.GetCountries>(() => _i151.GetCountries(
      repository: gh<_i69.LocationInformationRepositoryProtocol>()));
  gh.factory<_i152.GetDisasterDetailBloc>(() => _i152.GetDisasterDetailBloc(
        getEarthquakes: gh<_i51.GetEarthquakes>(),
        getVolcanoes: gh<_i56.GetVolcanoes>(),
      ));
  gh.factory<_i153.GetDownloadablePdfLink>(() => _i153.GetDownloadablePdfLink(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i154.GetFavouriteNews>(() =>
      _i154.GetFavouriteNews(repository: gh<_i73.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i155.GetHomePageData>(() => _i155.GetHomePageData(
        repository: gh<_i62.HomeReporisitory>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i156.GetIndivisualTransaction>(
      () => _i156.GetIndivisualTransaction(
            repository: gh<_i104.TransactionRepository>(),
            networkInfo: gh<_i15.NetworkInfo>(),
          ));
  gh.lazySingleton<_i157.GetKhanepaniOffices>(() => _i157.GetKhanepaniOffices(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i158.GetLatestNews>(() => _i158.GetLatestNews(
        repository: gh<_i73.NewsRepositoryProtocol>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i159.GetListOfCityFromPrefectures>(() =>
      _i159.GetListOfCityFromPrefectures(
          repository: gh<_i69.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i160.GetListOfPaymentMethods>(
      () => _i160.GetListOfPaymentMethods(
            networkInfo: gh<_i15.NetworkInfo>(),
            repository: gh<_i66.LoadBalanceRepositories>(),
          ));
  gh.lazySingleton<_i161.GetNeaOffice>(() => _i161.GetNeaOffice(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i162.GetNewsForYou>(() => _i162.GetNewsForYou(
        repository: gh<_i73.NewsRepositoryProtocol>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i163.GetNewsGenre>(
      () => _i163.GetNewsGenre(repository: gh<_i73.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i164.GetNewsPreferences>(() =>
      _i164.GetNewsPreferences(repository: gh<_i73.NewsRepositoryProtocol>()));
  gh.singleton<_i165.GetPartnerServices>(_i165.GetPartnerServices(
    repository: gh<_i77.PartnerServicesRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.singleton<_i166.GetPartnerServicesCategories>(
      _i166.GetPartnerServicesCategories(
    repository: gh<_i77.PartnerServicesRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.factory<_i167.GetPaymentMethodsBloc>(() => _i167.GetPaymentMethodsBloc(
        getListOfPaymentMethods: gh<_i160.GetListOfPaymentMethods>(),
        deletecard: gh<_i140.DeleteCard>(),
      ));
  gh.lazySingleton<_i168.GetPrefectureCityFromPostalCode>(() =>
      _i168.GetPrefectureCityFromPostalCode(
          repository: gh<_i69.LocationInformationRepositoryProtocol>()));
  gh.factory<_i169.GetResume>(() => _i169.GetResume(
        repository: gh<_i85.ResumeRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i170.GetSearchPageData>(() => _i170.GetSearchPageData(
        repository: gh<_i89.SearchRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i171.GetSubscriptionDetailForPartnerService>(
      () => _i171.GetSubscriptionDetailForPartnerService(
            networkInfo: gh<_i15.NetworkInfo>(),
            repository: gh<_i115.UtilityPaymentRepository>(),
          ));
  gh.lazySingleton<_i172.GetTransactions>(() => _i172.GetTransactions(
        repository: gh<_i104.TransactionRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i173.HomePageDataBloc>(() =>
      _i173.HomePageDataBloc(getHomePageData: gh<_i155.GetHomePageData>()));
  gh.factory<_i174.IndividualTransactionBloc>(() =>
      _i174.IndividualTransactionBloc(
          getIndividualTxn: gh<_i156.GetIndivisualTransaction>()));
  gh.lazySingleton<_i175.JapaneseMannerRepository>(
      () => _i176.JapaneseMannerRepositoryImpl(
            remoteDataSource: gh<_i64.JapaneseMannersRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.factory<_i177.KhanepaniOfficesBloc>(
      () => _i177.KhanepaniOfficesBloc(gh<_i157.GetKhanepaniOffices>()));
  gh.lazySingleton<_i178.LatestNewsBloc>(
      () => _i178.LatestNewsBloc(getNews: gh<_i158.GetLatestNews>()));
  gh.factory<_i179.LocationViaPostalCodeBloc>(() =>
      _i179.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              gh<_i168.GetPrefectureCityFromPostalCode>()));
  gh.factory<_i180.NeaOfficesBloc>(
      () => _i180.NeaOfficesBloc(gh<_i161.GetNeaOffice>()));
  gh.lazySingleton<_i181.NewsBloc>(
      () => _i181.NewsBloc(getNews: gh<_i162.GetNewsForYou>()));
  gh.factory<_i182.NewsGenreBloc>(
      () => _i182.NewsGenreBloc(getNewsGenre: gh<_i163.GetNewsGenre>()));
  gh.factory<_i183.NewsPreferenceBloc>(() => _i183.NewsPreferenceBloc(
      getNewsPreferences: gh<_i164.GetNewsPreferences>()));
  gh.lazySingleton<_i184.NotificationRepository>(
      () => _i185.NotificationRepositoryImpl(
            dataSource: gh<_i75.NotificationsRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.factory<_i186.ParnterServicesBloc>(() => _i186.ParnterServicesBloc(
      getPartnerServices: gh<_i165.GetPartnerServices>()));
  gh.factory<_i187.PartnerServiceCategoriesBloc>(() =>
      _i187.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              gh<_i166.GetPartnerServicesCategories>()));
  gh.factory<_i188.PasswordResetBloc>(() => _i188.PasswordResetBloc(
      resetPasswordUseCase: gh<_i83.ResetPasswordUseCase>()));
  gh.lazySingleton<_i189.PayISP>(() => _i189.PayISP(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i190.PayKhanepani>(() => _i190.PayKhanepani(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i191.PayNea>(() => _i191.PayNea(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i192.PayTv>(() => _i192.PayTv(
        networkInfo: gh<_i15.NetworkInfo>(),
        repository: gh<_i115.UtilityPaymentRepository>(),
      ));
  gh.lazySingleton<_i193.PurchaseSubscriptionFromPartnerService>(
      () => _i193.PurchaseSubscriptionFromPartnerService(
            networkInfo: gh<_i15.NetworkInfo>(),
            repository: gh<_i115.UtilityPaymentRepository>(),
          ));
  gh.factory<_i194.RedeemCouponBloc>(() => _i194.RedeemCouponBloc(
        applyCoupon: gh<_i137.ApplyCoupon>(),
        redeemCoupon: gh<_i81.RedeemCoupon>(),
      ));
  gh.lazySingleton<_i195.ResumeWatcherBloc>(() => _i195.ResumeWatcherBloc(
        getResume: gh<_i169.GetResume>(),
        deleteResumeData: gh<_i142.DeleteResumeData>(),
      ));
  gh.lazySingleton<_i196.RewardPointRepository>(
      () => _i197.RewardPointRepositoryImpl(
            dataSource: gh<_i87.RewardPointsRemoteDataSource>(),
            logger: gh<_i14.Logger>(),
          ));
  gh.factory<_i198.SearchBloc>(
      () => _i198.SearchBloc(gh<_i170.GetSearchPageData>()));
  gh.factory<_i199.SignInFormBloc>(() => _i199.SignInFormBloc(
        signInWithEmailUsecase: gh<_i94.SignInWithEmailAndPassword>(),
        signInWithApple: gh<_i93.SignInWithApple>(),
        signInWithFacebook: gh<_i95.SignInWithFacebook>(),
        signInWithGoogle: gh<_i96.SignInWithGoogle>(),
      ));
  gh.factory<_i200.SignUpFormBloc>(() => _i200.SignUpFormBloc(
        signUpWithEmailUsecase: gh<_i97.SignUpWithEmailPasswordAndUserDetail>(),
        signInWithApple: gh<_i93.SignInWithApple>(),
        signInWithFacebook: gh<_i95.SignInWithFacebook>(),
        signInWithGoogle: gh<_i96.SignInWithGoogle>(),
      ));
  gh.factory<_i201.SubscriptionForPartnerServiceBloc>(
      () => _i201.SubscriptionForPartnerServiceBloc(
            getSubscriptionDetailForPartnerService:
                gh<_i171.GetSubscriptionDetailForPartnerService>(),
            purchaseSubscriptionFromPartnerService:
                gh<_i193.PurchaseSubscriptionFromPartnerService>(),
          ));
  gh.lazySingleton<_i202.TopUpBalanceForMobile>(
      () => _i202.TopUpBalanceForMobile(
            networkInfo: gh<_i15.NetworkInfo>(),
            repository: gh<_i115.UtilityPaymentRepository>(),
          ));
  gh.factory<_i203.TopUpBalanceInMobileBloc>(() =>
      _i203.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: gh<_i202.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i204.TransactionBloc>(
      () => _i204.TransactionBloc(getTransaction: gh<_i172.GetTransactions>()));
  gh.factory<_i205.TvPaymentBloc>(() => _i205.TvPaymentBloc(
        gh<_i192.PayTv>(),
        gh<_i146.EnquiryTv>(),
      ));
  gh.factory<_i206.UpdateProfileBloc>(() => _i206.UpdateProfileBloc(
        updateKycInfo: gh<_i108.UpdateKycInfo>(),
        updateResumeImage: gh<_i112.UpdateResumeImage>(),
        getListOfCityFromPrefectures: gh<_i159.GetListOfCityFromPrefectures>(),
      ));
  gh.factory<_i207.AdsBloc>(() => _i207.AdsBloc(
        gh<_i147.GetAds>(),
        gh<_i131.AdsRemoteDataSource>(),
      ));
  gh.lazySingleton<_i208.AppUpdateBloc>(
      () => _i208.AppUpdateBloc(gh<_i150.GetAppUpdate>()));
  gh.factory<_i209.DownloadPdfBloc>(() => _i209.DownloadPdfBloc(
      getDownloadablePdfLink: gh<_i153.GetDownloadablePdfLink>()));
  gh.factory<_i210.FavouriteNewsBloc>(() =>
      _i210.FavouriteNewsBloc(getFavouriteNews: gh<_i154.GetFavouriteNews>()));
  gh.singleton<_i211.GetJapaneseManner>(_i211.GetJapaneseManner(
    repository: gh<_i175.JapaneseMannerRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.singleton<_i212.GetJapaneseMannerCategories>(
      _i212.GetJapaneseMannerCategories(
    repository: gh<_i175.JapaneseMannerRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.singleton<_i213.GetJapaneseMannerDetail>(_i213.GetJapaneseMannerDetail(
    repository: gh<_i175.JapaneseMannerRepository>(),
    networkInfo: gh<_i15.NetworkInfo>(),
  ));
  gh.lazySingleton<_i214.GetNotifications>(() => _i214.GetNotifications(
        repository: gh<_i184.NotificationRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.lazySingleton<_i215.GetRewardPoints>(() => _i215.GetRewardPoints(
        repository: gh<_i196.RewardPointRepository>(),
        networkInfo: gh<_i15.NetworkInfo>(),
      ));
  gh.factory<_i216.ISPPaymentBloc>(() => _i216.ISPPaymentBloc(
        gh<_i189.PayISP>(),
        gh<_i144.EnquiryISP>(),
      ));
  gh.factory<_i217.JapaneseMannerBloc>(() => _i217.JapaneseMannerBloc(
      getJapaneseManner: gh<_i211.GetJapaneseManner>()));
  gh.factory<_i218.JapaneseMannerCategoriesBloc>(() =>
      _i218.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              gh<_i212.GetJapaneseMannerCategories>()));
  gh.factory<_i219.JapaneseMannerDetailBloc>(() =>
      _i219.JapaneseMannerDetailBloc(
          getJpMannerDetail: gh<_i213.GetJapaneseMannerDetail>()));
  gh.factory<_i220.KhanepaniPaymentBloc>(() => _i220.KhanepaniPaymentBloc(
        gh<_i143.EnquireKhanepani>(),
        gh<_i190.PayKhanepani>(),
      ));
  gh.factory<_i221.NeaPaymentBloc>(() => _i221.NeaPaymentBloc(
        gh<_i145.EnquiryNea>(),
        gh<_i191.PayNea>(),
      ));
  gh.factory<_i222.NotificationsBloc>(() =>
      _i222.NotificationsBloc(getNotifications: gh<_i214.GetNotifications>()));
  gh.factory<_i223.RewardPointBloc>(() =>
      _i223.RewardPointBloc(getRewardPoints: gh<_i215.GetRewardPoints>()));
  return getIt;
}

class _$HttpClientInjectableModule extends _i224.HttpClientInjectableModule {}

class _$SharedPreferenceModule extends _i225.SharedPreferenceModule {}

class _$DataConnectionCheckerModule extends _i226.DataConnectionCheckerModule {}

class _$ShareBNPJStorageModule extends _i227.ShareBNPJStorageModule {}

class _$FlutterStorageModule extends _i228.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i229.GoogleLoginInjectableModule {}
