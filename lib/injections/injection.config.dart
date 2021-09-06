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

import '../core/database/local_database_provider.dart' as _i184;
import '../core/database/news_provider.dart' as _i60;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i17;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i114;
import '../features/ads/data/repository/ads_repository.dart' as _i116;
import '../features/ads/domain/repositories/ads_repository.dart' as _i115;
import '../features/ads/domain/use_case/get_ads.dart' as _i122;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i171;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i19;
import '../features/alerts/data/repository/alert_repository.dart' as _i21;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i20;
import '../features/alerts/domain/usecase/get_alert_places.dart' as _i35;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i33;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i40;
import '../features/alerts/domain/usecase/get_place_from_gps.dart' as _i42;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i43;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i46;
import '../features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart'
    as _i185;
import '../features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart'
    as _i123;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i34;
import '../features/alerts/presentation/get_disaster_detail/get_disaster_detail_bloc.dart'
    as _i125;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i41;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i44;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i47;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i22;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i23;
import '../features/auth/data/repository/auth_repository.dart' as _i25;
import '../features/auth/domain/repositories/auth_repository.dart' as _i24;
import '../features/auth/domain/usecase/change_password.dart' as _i29;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i45;
import '../features/auth/domain/usecase/logout_user.dart' as _i58;
import '../features/auth/domain/usecase/reset_password.dart' as _i70;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i78;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i79;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i80;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i81;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i82;
import '../features/auth/domain/usecase/verify_email.dart' as _i104;
import '../features/auth/presentation/password/change_password/change_password_bloc.dart'
    as _i118;
import '../features/auth/presentation/password/password_reset/password_reset_bloc.dart'
    as _i157;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i164;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i165;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i105;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i30;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i32;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i31;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i117;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i38;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i69;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i102;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i39;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i159;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i103;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i48;
import '../features/home/data/repositories/home_repository.dart' as _i50;
import '../features/home/domain/repositories/home_repository.dart' as _i49;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i128;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i142;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i51;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i145;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i144;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i177;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i179;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i181;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i176;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i178;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i180;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i52;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i54;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i53;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i119;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i132;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i84;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i86;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i106;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i108;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i110;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i112;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i120;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i107;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i136;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i109;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i111;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i16;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i113;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i85;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i87;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i55;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i57;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i56;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i124;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i131;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i137;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i147;
import '../features/news/data/datasource/news_local_data_source.dart' as _i59;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i62;
import '../features/news/domain/repository/news_repository.dart' as _i61;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i127;
import '../features/news/domain/usecase/get_latest_news.dart' as _i130;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i133;
import '../features/news/domain/usecase/get_news_genre.dart' as _i134;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i135;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i173;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i146;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i148;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i149;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i150;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i63;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i152;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i151;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i174;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i182;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i64;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i66;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i65;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i154;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i156;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i68;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i153;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i155;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i67;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i26;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i28;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i27;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i36;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i37;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i170;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i71;
import '../features/resume/data/repository/resume_repository.dart' as _i73;
import '../features/resume/domain/repository/resume_repository.dart' as _i72;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i121;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i126;
import '../features/resume/domain/usecases/get_resume.dart' as _i138;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i91;
import '../features/resume/domain/usecases/update_address_info.dart' as _i92;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i93;
import '../features/resume/domain/usecases/update_other_info.dart' as _i94;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i95;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i96;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i97;
import '../features/resume/domain/usecases/update_work_info.dart' as _i98;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i172;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i160;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i74;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i162;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i161;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i175;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i183;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i75;
import '../features/search/data/repository/search_repository.dart' as _i77;
import '../features/search/domain/repositories/search_repository.dart' as _i76;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i139;
import '../features/search/presentation/bloc/search_bloc.dart' as _i163;
import '../features/splash/presentation/splash_bloc.dart' as _i83;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i88;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i90;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i89;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i129;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i141;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i143;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i169;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i99;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i101;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i100;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i140;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i158;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i167;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i166;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i168;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i189;
import 'injectable/flutter_secure_storage_module.dart' as _i187;
import 'injectable/google_login_injectable_module.dart' as _i188;
import 'injectable/http_client_injectable_module.dart' as _i186;
import 'injectable/shared_preference_module.dart'
    as _i190; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i19.AlertRemoteDataSource>(() =>
      _i19.AlertRemoteDataSourceImpl(
          logger: get<_i12.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>()));
  gh.lazySingleton<_i20.AlertRepository>(() => _i21.AlertRepositoryImpl(
      dataSource: get<_i19.AlertRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i22.AuthLocalDataSource>(() => _i22.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i18.SharedPreferences>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i23.AuthRemoteDataSource>(() =>
      _i23.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
      remoteDataSource: get<_i23.AuthRemoteDataSource>(),
      localDataSource: get<_i22.AuthLocalDataSource>(),
      googleSignIn: get<_i8.GoogleSignIn>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i26.BalanceRemoteDataSource>(() =>
      _i26.BalanceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i27.BalanceRepository>(() => _i28.BalanceRepositoryImpl(
      dataSource: get<_i26.BalanceRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i29.ChangePasswordUseCase>(() => _i29.ChangePasswordUseCase(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i30.CouponRemoteDataSource>(() =>
      _i30.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i31.CouponRepository>(() => _i32.CouponRepositoryImpl(
      dataSource: get<_i30.CouponRemoteDataSource>()));
  gh.lazySingleton<_i33.GetAlerts>(() => _i33.GetAlerts(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i34.GetAlertsBloc>(
      () => _i34.GetAlertsBloc(getAlerts: get<_i33.GetAlerts>()));
  gh.lazySingleton<_i35.GetAlertsPlaces>(() => _i35.GetAlertsPlaces(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i36.GetBalance>(() => _i36.GetBalance(
      repository: get<_i27.BalanceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i37.GetBalanceBloc>(
      () => _i37.GetBalanceBloc(getBalance: get<_i36.GetBalance>()));
  gh.lazySingleton<_i38.GetCouponList>(() => _i38.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.factory<_i39.GetCouponListBloc>(
      () => _i39.GetCouponListBloc(getCouponList: get<_i38.GetCouponList>()));
  gh.lazySingleton<_i40.GetEarthquakes>(() => _i40.GetEarthquakes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i41.GetEarthquakesBloc>(() =>
      _i41.GetEarthquakesBloc(getEarthquakes: get<_i40.GetEarthquakes>()));
  gh.lazySingleton<_i42.GetPlaceFromGPS>(() => _i42.GetPlaceFromGPS(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i43.GetVolcanoes>(() => _i43.GetVolcanoes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i44.GetVolcanoesBloc>(
      () => _i44.GetVolcanoesBloc(getVolcanoes: get<_i43.GetVolcanoes>()));
  gh.lazySingleton<_i45.GetWalletUser>(
      () => _i45.GetWalletUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i46.GetWeathers>(() => _i46.GetWeathers(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i47.GetWeathersBloc>(
      () => _i47.GetWeathersBloc(getWeathers: get<_i46.GetWeathers>()));
  gh.lazySingleton<_i48.HomePageRemoteDataSource>(() =>
      _i48.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i49.HomeReporisitory>(() => _i50.HomeRepositoryImpl(
      remoteDataSource: get<_i48.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i51.JapaneseMannersRemoteDataSource>(() =>
      _i51.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i52.LoadBalanceDataSource>(() =>
      _i52.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i53.LoadBalanceRepositories>(() =>
      _i54.LoadBalanceRepositoriesImpl(
          dataSource: get<_i52.LoadBalanceDataSource>()));
  gh.lazySingleton<_i55.LocationInformationLocalDataSourceProtocol>(() =>
      _i55.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i56.LocationInformationRepositoryProtocol>(() =>
      _i57.LocationInformationRepository(
          dataSource: get<_i55.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i58.LogoutUser>(
      () => _i58.LogoutUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i59.NewsLocalDataSourceProtocol>(() =>
      _i59.NewsLocalDataSource(
          localProvider: get<_i60.NewsLocalProvider>(),
          preferences: get<_i18.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i61.NewsRepositoryProtocol>(() => _i62.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i59.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i63.NotificationsRemoteDataSource>(() =>
      _i63.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i64.PartnerServicesRemoteDataSource>(() =>
      _i64.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i22.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i65.PartnerServicesRepository>(() =>
      _i66.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i64.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i67.PurchasePackageBloc>(() =>
      _i67.PurchasePackageBloc(purchasePackage: get<_i68.PurchasePackage>()));
  gh.lazySingleton<_i69.RedeemCoupon>(() => _i69.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.lazySingleton<_i70.ResetPasswordUseCase>(() => _i70.ResetPasswordUseCase(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i71.ResumeRemoteDataSource>(() =>
      _i71.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i72.ResumeRepository>(() => _i73.ResumeRepositoryImpl(
      dataSource: get<_i71.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i74.RewardPointsRemoteDataSource>(() =>
      _i74.RewardPointsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i75.SearchPageRemoteDataSource>(() =>
      _i75.SearchPageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i76.SearchRepository>(() => _i77.SearchRepositoryImpl(
      dataSource: get<_i75.SearchPageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i78.SignInWithApple>(() => _i78.SignInWithApple(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i79.SignInWithEmailAndPassword>(() =>
      _i79.SignInWithEmailAndPassword(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i80.SignInWithFacebook>(() => _i80.SignInWithFacebook(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i81.SignInWithGoogle>(() => _i81.SignInWithGoogle(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i82.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i82.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i83.SplashBloc>(
      () => _i83.SplashBloc(getWalletUser: get<_i45.GetWalletUser>()));
  gh.lazySingleton<_i84.StripeRefund>(() => _i84.StripeRefund(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i85.StripeRefundBloc>(
      () => _i85.StripeRefundBloc(stripeRefund: get<_i84.StripeRefund>()));
  gh.lazySingleton<_i86.TopUpViaStripe>(() => _i86.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i87.TopupViaStripeBloc>(() =>
      _i87.TopupViaStripeBloc(topUpViaStripe: get<_i86.TopUpViaStripe>()));
  gh.lazySingleton<_i88.TransactionRemoteDataSource>(() =>
      _i88.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i89.TransactionRepository>(() =>
      _i90.TransactionRepositoryImpl(
          dataSource: get<_i88.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i91.UpdateAcadamicInfo>(() => _i91.UpdateAcadamicInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i92.UpdateAddressInfo>(() => _i92.UpdateAddressInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i93.UpdateKycInfo>(() => _i93.UpdateKycInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i94.UpdateOtherInfo>(() => _i94.UpdateOtherInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i95.UpdatePersonalInfo>(() => _i95.UpdatePersonalInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i96.UpdateQualificationInfo>(() => _i96.UpdateQualificationInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i97.UpdateResumeImage>(() => _i97.UpdateResumeImage(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i98.UpdateWorkInfo>(() => _i98.UpdateWorkInfo(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i99.UtilityPaymentDataSource>(() =>
      _i99.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i100.UtilityPaymentRepository>(() =>
      _i101.UtilityPaymentRepositoryImpl(
          dataSource: get<_i99.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i102.VerifyCoupon>(() => _i102.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.factory<_i103.VerifyCouponBloc>(
      () => _i103.VerifyCouponBloc(verifyCoupon: get<_i102.VerifyCoupon>()));
  gh.lazySingleton<_i104.VerifyEmail>(() => _i104.VerifyEmail(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i105.VerifyEmailBloc>(
      () => _i105.VerifyEmailBloc(verifyEmail: get<_i104.VerifyEmail>()));
  gh.lazySingleton<_i106.VerifyEsewaTopup>(() => _i106.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i107.VerifyEsewaTopupBloc>(() => _i107.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i106.VerifyEsewaTopup>()));
  gh.lazySingleton<_i108.VerifyImePayTopup>(() => _i108.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i109.VerifyImePayTopupBloc>(() => _i109.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i108.VerifyImePayTopup>()));
  gh.lazySingleton<_i110.VerifyKhaltiTopup>(() => _i110.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i111.VerifyKhaltiTopupBloc>(() => _i111.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i110.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i112.VerifyPrabhuPayTopup>(() => _i112.VerifyPrabhuPayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i113.VerifyPrabhuPayTopupBloc>(() =>
      _i113.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: get<_i112.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i114.AdsRemoteDataSource>(() =>
      _i114.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i115.AdsRepository>(() =>
      _i116.AdsRepositoryImpl(dataSource: get<_i114.AdsRemoteDataSource>()));
  gh.lazySingleton<_i117.ApplyCoupon>(() => _i117.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.factory<_i118.ChangePasswordBloc>(
      () => _i118.ChangePasswordBloc(get<_i29.ChangePasswordUseCase>()));
  gh.lazySingleton<_i119.DeleteCard>(() => _i119.DeleteCard(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i53.LoadBalanceRepositories>()));
  gh.factory<_i120.DeleteCardBloc>(
      () => _i120.DeleteCardBloc(deleteCard: get<_i119.DeleteCard>()));
  gh.factory<_i121.DeleteResumeData>(() => _i121.DeleteResumeData(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i122.GetAds>(() => _i122.GetAds(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i115.AdsRepository>()));
  gh.factory<_i123.GetAlertPlacesBloc>(
      () => _i123.GetAlertPlacesBloc(get<_i35.GetAlertsPlaces>()));
  gh.lazySingleton<_i124.GetCountries>(() => _i124.GetCountries(
      repository: get<_i56.LocationInformationRepositoryProtocol>()));
  gh.factory<_i125.GetDisasterDetailBloc>(() => _i125.GetDisasterDetailBloc(
      getEarthquakes: get<_i40.GetEarthquakes>(),
      getVolcanoes: get<_i43.GetVolcanoes>()));
  gh.factory<_i126.GetDownloadablePdfLink>(() => _i126.GetDownloadablePdfLink(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i127.GetFavouriteNews>(() =>
      _i127.GetFavouriteNews(repository: get<_i61.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i128.GetHomePageData>(() => _i128.GetHomePageData(
      repository: get<_i49.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i129.GetIndivisualTransaction>(() =>
      _i129.GetIndivisualTransaction(
          repository: get<_i89.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i130.GetLatestNews>(() => _i130.GetLatestNews(
      repository: get<_i61.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i131.GetListOfCityFromPrefectures>(() =>
      _i131.GetListOfCityFromPrefectures(
          repository: get<_i56.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i132.GetListOfPaymentMethods>(() =>
      _i132.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i53.LoadBalanceRepositories>()));
  gh.lazySingleton<_i133.GetNewsForYou>(() => _i133.GetNewsForYou(
      repository: get<_i61.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i134.GetNewsGenre>(
      () => _i134.GetNewsGenre(repository: get<_i61.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i135.GetNewsPreferences>(() =>
      _i135.GetNewsPreferences(repository: get<_i61.NewsRepositoryProtocol>()));
  gh.factory<_i136.GetPaymentMethodsBloc>(() => _i136.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i132.GetListOfPaymentMethods>(),
      deletecard: get<_i119.DeleteCard>()));
  gh.lazySingleton<_i137.GetPrefectureCityFromPostalCode>(() =>
      _i137.GetPrefectureCityFromPostalCode(
          repository: get<_i56.LocationInformationRepositoryProtocol>()));
  gh.factory<_i138.GetResume>(() => _i138.GetResume(
      repository: get<_i72.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i139.GetSearchPageData>(() => _i139.GetSearchPageData(
      repository: get<_i76.SearchRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i140.GetSubscriptionDetailForPartnerService>(() =>
      _i140.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i100.UtilityPaymentRepository>()));
  gh.lazySingleton<_i141.GetTransactions>(() => _i141.GetTransactions(
      repository: get<_i89.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i142.HomePageDataBloc>(() =>
      _i142.HomePageDataBloc(getHomePageData: get<_i128.GetHomePageData>()));
  gh.factory<_i143.IndividualTransactionBloc>(() =>
      _i143.IndividualTransactionBloc(
          getIndividualTxn: get<_i129.GetIndivisualTransaction>()));
  gh.lazySingleton<_i144.JapaneseMannerRepository>(() =>
      _i145.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i51.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i146.LatestNewsBloc>(
      () => _i146.LatestNewsBloc(getNews: get<_i130.GetLatestNews>()));
  gh.factory<_i147.LocationViaPostalCodeBloc>(() =>
      _i147.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i137.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i148.NewsBloc>(
      () => _i148.NewsBloc(getNews: get<_i133.GetNewsForYou>()));
  gh.factory<_i149.NewsGenreBloc>(
      () => _i149.NewsGenreBloc(getNewsGenre: get<_i134.GetNewsGenre>()));
  gh.factory<_i150.NewsPreferenceBloc>(() => _i150.NewsPreferenceBloc(
      getNewsPreferences: get<_i135.GetNewsPreferences>()));
  gh.lazySingleton<_i151.NotificationRepository>(() =>
      _i152.NotificationRepositoryImpl(
          dataSource: get<_i63.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i153.ParnterServicesBloc>(() => _i153.ParnterServicesBloc(
      getPartnerServices: get<_i154.GetPartnerServices>()));
  gh.factory<_i155.PartnerServiceCategoriesBloc>(() =>
      _i155.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i156.GetPartnerServicesCategories>()));
  gh.factory<_i157.PasswordResetBloc>(() => _i157.PasswordResetBloc(
      resetPasswordUseCase: get<_i70.ResetPasswordUseCase>()));
  gh.lazySingleton<_i158.PurchaseSubscriptionFromPartnerService>(() =>
      _i158.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i100.UtilityPaymentRepository>()));
  gh.factory<_i159.RedeemCouponBloc>(() => _i159.RedeemCouponBloc(
      applyCoupon: get<_i117.ApplyCoupon>(),
      redeemCoupon: get<_i69.RedeemCoupon>()));
  gh.lazySingleton<_i160.ResumeWatcherBloc>(() => _i160.ResumeWatcherBloc(
      getResume: get<_i138.GetResume>(),
      deleteResumeData: get<_i121.DeleteResumeData>()));
  gh.lazySingleton<_i161.RewardPointRepository>(() =>
      _i162.RewardPointRepositoryImpl(
          dataSource: get<_i74.RewardPointsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i163.SearchBloc>(
      () => _i163.SearchBloc(get<_i139.GetSearchPageData>()));
  gh.factory<_i164.SignInFormBloc>(() => _i164.SignInFormBloc(
      signInWithEmailUsecase: get<_i79.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i78.SignInWithApple>(),
      signInWithFacebook: get<_i80.SignInWithFacebook>(),
      signInWithGoogle: get<_i81.SignInWithGoogle>()));
  gh.factory<_i165.SignUpFormBloc>(() => _i165.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i82.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i166.SubscriptionForPartnerServiceBloc>(() =>
      _i166.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i140.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i158.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i167.TopUpBalanceForMobile>(() =>
      _i167.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i100.UtilityPaymentRepository>()));
  gh.factory<_i168.TopUpBalanceInMobileBloc>(() =>
      _i168.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i167.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i169.TransactionBloc>(() =>
      _i169.TransactionBloc(getTransaction: get<_i141.GetTransactions>()));
  gh.factory<_i170.UpdateProfileBloc>(() => _i170.UpdateProfileBloc(
      updateKycInfo: get<_i93.UpdateKycInfo>(),
      updateResumeImage: get<_i97.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i131.GetListOfCityFromPrefectures>()));
  gh.factory<_i171.AdsBloc>(() =>
      _i171.AdsBloc(get<_i122.GetAds>(), get<_i114.AdsRemoteDataSource>()));
  gh.factory<_i172.DownloadPdfBloc>(() => _i172.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i126.GetDownloadablePdfLink>()));
  gh.factory<_i173.FavouriteNewsBloc>(() =>
      _i173.FavouriteNewsBloc(getFavouriteNews: get<_i127.GetFavouriteNews>()));
  gh.lazySingleton<_i174.GetNotifications>(() => _i174.GetNotifications(
      repository: get<_i151.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i175.GetRewardPoints>(() => _i175.GetRewardPoints(
      repository: get<_i161.RewardPointRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i176.JapaneseMannerBloc>(() => _i176.JapaneseMannerBloc(
      getJapaneseManner: get<_i177.GetJapaneseManner>()));
  gh.factory<_i178.JapaneseMannerCategoriesBloc>(() =>
      _i178.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i179.GetJapaneseMannerCategories>()));
  gh.factory<_i180.JapaneseMannerDetailBloc>(() =>
      _i180.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i181.GetJapaneseMannerDetail>()));
  gh.factory<_i182.NotificationsBloc>(() =>
      _i182.NotificationsBloc(getNotifications: get<_i174.GetNotifications>()));
  gh.factory<_i183.RewardPointBloc>(() =>
      _i183.RewardPointBloc(getRewardPoints: get<_i175.GetRewardPoints>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i184.DBProvider>(_i184.DBProviderImpl());
  gh.singleton<_i60.NewsLocalProvider>(
      _i60.NewsLocalProviderImpl(provider: get<_i184.DBProvider>()));
  gh.singleton<_i68.PurchasePackage>(_i68.PurchasePackage(
      repository: get<_i65.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i185.GetAlertLocationBloc>(
      _i185.GetAlertLocationBloc(get<_i42.GetPlaceFromGPS>()));
  gh.singleton<_i154.GetPartnerServices>(_i154.GetPartnerServices(
      repository: get<_i65.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i156.GetPartnerServicesCategories>(
      _i156.GetPartnerServicesCategories(
          repository: get<_i65.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i177.GetJapaneseManner>(_i177.GetJapaneseManner(
      repository: get<_i144.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i179.GetJapaneseMannerCategories>(
      _i179.GetJapaneseMannerCategories(
          repository: get<_i144.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i181.GetJapaneseMannerDetail>(_i181.GetJapaneseMannerDetail(
      repository: get<_i144.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i186.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i187.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i188.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i189.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i190.SharedPreferenceModule {}
