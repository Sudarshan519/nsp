// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/database/local_database_provider.dart' as _i179;
import '../core/database/news_provider.dart' as _i58;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i13;
import '../core/network/newtork_info.dart' as _i15;
import '../core/notification/push_notification_manager.dart' as _i18;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i112;
import '../features/ads/data/repository/ads_repository.dart' as _i114;
import '../features/ads/domain/repositories/ads_repository.dart' as _i113;
import '../features/ads/domain/use_case/get_ads.dart' as _i119;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i166;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i20;
import '../features/alerts/data/repository/alert_repository.dart' as _i22;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i21;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i33;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i39;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i41;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i44;
import '../features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart'
    as _i8;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i34;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i40;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i42;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i45;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i23;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i24;
import '../features/auth/data/repository/auth_repository.dart' as _i26;
import '../features/auth/domain/repositories/auth_repository.dart' as _i25;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i43;
import '../features/auth/domain/usecase/logout_user.dart' as _i56;
import '../features/auth/domain/usecase/reset_password.dart' as _i68;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i76;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i77;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i78;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i79;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i80;
import '../features/auth/domain/usecase/verify_email.dart' as _i102;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i152;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i159;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i160;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i103;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i30;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i32;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i31;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i115;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i37;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i67;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i100;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i38;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i154;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i101;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i46;
import '../features/home/data/repositories/home_repository.dart' as _i48;
import '../features/home/domain/repositories/home_repository.dart' as _i47;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i123;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i137;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i49;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i140;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i139;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i172;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i174;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i176;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i171;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i173;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i175;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i50;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i52;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i51;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i116;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i127;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i82;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i84;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i104;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i106;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i108;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i110;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i117;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i105;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i131;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i10;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i107;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i12;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i109;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i17;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i111;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i83;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i85;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i53;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i55;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i54;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i120;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i126;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i132;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i142;
import '../features/news/data/datasource/news_local_data_source.dart' as _i57;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i16;
import '../features/news/data/repository/news_repository.dart' as _i60;
import '../features/news/domain/repository/news_repository.dart' as _i59;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i122;
import '../features/news/domain/usecase/get_latest_news.dart' as _i125;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i128;
import '../features/news/domain/usecase/get_news_genre.dart' as _i129;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i130;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i168;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i141;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i143;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i144;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i145;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i61;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i147;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i146;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i169;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i177;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i62;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i64;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i63;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i149;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i151;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i66;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i148;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i150;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i65;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i27;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i29;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i28;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i35;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i36;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i165;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i69;
import '../features/resume/data/repository/resume_repository.dart' as _i71;
import '../features/resume/domain/repository/resume_repository.dart' as _i70;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i118;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i121;
import '../features/resume/domain/usecases/get_resume.dart' as _i133;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i89;
import '../features/resume/domain/usecases/update_address_info.dart' as _i90;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i91;
import '../features/resume/domain/usecases/update_other_info.dart' as _i92;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i93;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i94;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i95;
import '../features/resume/domain/usecases/update_work_info.dart' as _i96;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i167;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i155;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i72;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i157;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i156;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i170;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i178;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i73;
import '../features/search/data/repository/search_repository.dart' as _i75;
import '../features/search/domain/repositories/search_repository.dart' as _i74;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i134;
import '../features/search/presentation/bloc/search_bloc.dart' as _i158;
import '../features/splash/presentation/splash_bloc.dart' as _i81;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i86;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i88;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i87;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i124;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i136;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i138;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i164;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i97;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i99;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i98;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i135;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i153;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i162;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i161;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i163;
import '../utils/config_reader.dart' as _i14;
import 'injectable/data_connection_checker_injectable_module.dart' as _i183;
import 'injectable/flutter_secure_storage_module.dart' as _i181;
import 'injectable/google_login_injectable_module.dart' as _i182;
import 'injectable/http_client_injectable_module.dart' as _i180;
import 'injectable/shared_preference_module.dart'
    as _i184; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.GetAlertLocationBloc>(() => _i8.GetAlertLocationBloc());
  gh.lazySingleton<_i9.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i10.ImePayFormCubit>(() => _i10.ImePayFormCubit());
  gh.lazySingleton<_i11.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.factory<_i12.KhaltiFormCubit>(() => _i12.KhaltiFormCubit());
  gh.lazySingleton<_i13.Logger>(() => _i13.LoggerImpl(
      client: get<_i3.Client>(), config: get<_i14.ConfigReader>()));
  gh.lazySingleton<_i15.NetworkInfo>(() => _i15.NetworkInfoImpl(
      dataConnectionChecker: get<_i11.InternetConnectionChecker>()));
  gh.lazySingleton<_i16.NewsRemoteDataSourceProtocol>(() =>
      _i16.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.factory<_i17.PrabhuPayFormCubit>(() => _i17.PrabhuPayFormCubit());
  gh.lazySingleton<_i18.PushNotificationManager>(
      () => _i18.PushNotificationManager());
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i20.AlertRemoteDataSource>(() =>
      _i20.AlertRemoteDataSourceImpl(
          logger: get<_i13.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>()));
  gh.lazySingleton<_i21.AlertRepository>(() => _i22.AlertRepositoryImpl(
      dataSource: get<_i20.AlertRemoteDataSource>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i19.SharedPreferences>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i24.AuthRemoteDataSource>(() =>
      _i24.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i25.AuthRepository>(() => _i26.AuthRepositoryImpl(
      remoteDataSource: get<_i24.AuthRemoteDataSource>(),
      localDataSource: get<_i23.AuthLocalDataSource>(),
      googleSignIn: get<_i9.GoogleSignIn>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i27.BalanceRemoteDataSource>(() =>
      _i27.BalanceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i28.BalanceRepository>(() => _i29.BalanceRepositoryImpl(
      dataSource: get<_i27.BalanceRemoteDataSource>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i30.CouponRemoteDataSource>(() =>
      _i30.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i31.CouponRepository>(() => _i32.CouponRepositoryImpl(
      dataSource: get<_i30.CouponRemoteDataSource>()));
  gh.lazySingleton<_i33.GetAlerts>(() => _i33.GetAlerts(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i34.GetAlertsBloc>(
      () => _i34.GetAlertsBloc(getAlerts: get<_i33.GetAlerts>()));
  gh.lazySingleton<_i35.GetBalance>(() => _i35.GetBalance(
      repository: get<_i28.BalanceRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i36.GetBalanceBloc>(
      () => _i36.GetBalanceBloc(getBalance: get<_i35.GetBalance>()));
  gh.lazySingleton<_i37.GetCouponList>(() => _i37.GetCouponList(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.factory<_i38.GetCouponListBloc>(
      () => _i38.GetCouponListBloc(getCouponList: get<_i37.GetCouponList>()));
  gh.lazySingleton<_i39.GetEarthquakes>(() => _i39.GetEarthquakes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i40.GetEarthquakesBloc>(() =>
      _i40.GetEarthquakesBloc(getEarthquakes: get<_i39.GetEarthquakes>()));
  gh.lazySingleton<_i41.GetVolcanoes>(() => _i41.GetVolcanoes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i42.GetVolcanoesBloc>(
      () => _i42.GetVolcanoesBloc(getVolcanoes: get<_i41.GetVolcanoes>()));
  gh.lazySingleton<_i43.GetWalletUser>(
      () => _i43.GetWalletUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i44.GetWeathers>(() => _i44.GetWeathers(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i45.GetWeathersBloc>(
      () => _i45.GetWeathersBloc(getWeathers: get<_i44.GetWeathers>()));
  gh.lazySingleton<_i46.HomePageRemoteDataSource>(() =>
      _i46.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i47.HomeReporisitory>(() => _i48.HomeRepositoryImpl(
      remoteDataSource: get<_i46.HomePageRemoteDataSource>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i49.JapaneseMannersRemoteDataSource>(() =>
      _i49.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i50.LoadBalanceDataSource>(() =>
      _i50.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i51.LoadBalanceRepositories>(() =>
      _i52.LoadBalanceRepositoriesImpl(
          dataSource: get<_i50.LoadBalanceDataSource>()));
  gh.lazySingleton<_i53.LocationInformationLocalDataSourceProtocol>(() =>
      _i53.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i54.LocationInformationRepositoryProtocol>(() =>
      _i55.LocationInformationRepository(
          dataSource: get<_i53.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i56.LogoutUser>(
      () => _i56.LogoutUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i57.NewsLocalDataSourceProtocol>(() =>
      _i57.NewsLocalDataSource(
          localProvider: get<_i58.NewsLocalProvider>(),
          preferences: get<_i19.SharedPreferences>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i59.NewsRepositoryProtocol>(() => _i60.NewsRepository(
      remoteDataSource: get<_i16.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i57.NewsLocalDataSourceProtocol>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i61.NotificationsRemoteDataSource>(() =>
      _i61.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i62.PartnerServicesRemoteDataSource>(() =>
      _i62.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i23.AuthLocalDataSource>(),
          config: get<_i14.ConfigReader>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i63.PartnerServicesRepository>(() =>
      _i64.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i62.PartnerServicesRemoteDataSource>(),
          logger: get<_i13.Logger>()));
  gh.factory<_i65.PurchasePackageBloc>(() =>
      _i65.PurchasePackageBloc(purchasePackage: get<_i66.PurchasePackage>()));
  gh.lazySingleton<_i67.RedeemCoupon>(() => _i67.RedeemCoupon(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.lazySingleton<_i68.ResetPasswordUseCase>(() => _i68.ResetPasswordUseCase(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i69.ResumeRemoteDataSource>(() =>
      _i69.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i70.ResumeRepository>(() => _i71.ResumeRepositoryImpl(
      dataSource: get<_i69.ResumeRemoteDataSource>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i72.RewardPointsRemoteDataSource>(() =>
      _i72.RewardPointsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i73.SearchPageRemoteDataSource>(() =>
      _i73.SearchPageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i74.SearchRepository>(() => _i75.SearchRepositoryImpl(
      dataSource: get<_i73.SearchPageRemoteDataSource>(),
      logger: get<_i13.Logger>()));
  gh.lazySingleton<_i76.SignInWithApple>(() => _i76.SignInWithApple(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i77.SignInWithEmailAndPassword>(() =>
      _i77.SignInWithEmailAndPassword(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i78.SignInWithFacebook>(() => _i78.SignInWithFacebook(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i79.SignInWithGoogle>(() => _i79.SignInWithGoogle(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i80.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i80.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i81.SplashBloc>(
      () => _i81.SplashBloc(getWalletUser: get<_i43.GetWalletUser>()));
  gh.lazySingleton<_i82.StripeRefund>(() => _i82.StripeRefund(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i83.StripeRefundBloc>(
      () => _i83.StripeRefundBloc(stripeRefund: get<_i82.StripeRefund>()));
  gh.lazySingleton<_i84.TopUpViaStripe>(() => _i84.TopUpViaStripe(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i85.TopupViaStripeBloc>(() =>
      _i85.TopupViaStripeBloc(topUpViaStripe: get<_i84.TopUpViaStripe>()));
  gh.lazySingleton<_i86.TransactionRemoteDataSource>(() =>
      _i86.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i87.TransactionRepository>(() =>
      _i88.TransactionRepositoryImpl(
          dataSource: get<_i86.TransactionRemoteDataSource>(),
          logger: get<_i13.Logger>()));
  gh.factory<_i89.UpdateAcadamicInfo>(() => _i89.UpdateAcadamicInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i90.UpdateAddressInfo>(() => _i90.UpdateAddressInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i91.UpdateKycInfo>(() => _i91.UpdateKycInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i92.UpdateOtherInfo>(() => _i92.UpdateOtherInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i93.UpdatePersonalInfo>(() => _i93.UpdatePersonalInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i94.UpdateQualificationInfo>(() => _i94.UpdateQualificationInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i95.UpdateResumeImage>(() => _i95.UpdateResumeImage(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i96.UpdateWorkInfo>(() => _i96.UpdateWorkInfo(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i97.UtilityPaymentDataSource>(() =>
      _i97.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i98.UtilityPaymentRepository>(() =>
      _i99.UtilityPaymentRepositoryImpl(
          dataSource: get<_i97.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i100.VerifyCoupon>(() => _i100.VerifyCoupon(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.factory<_i101.VerifyCouponBloc>(
      () => _i101.VerifyCouponBloc(verifyCoupon: get<_i100.VerifyCoupon>()));
  gh.lazySingleton<_i102.VerifyEmail>(() => _i102.VerifyEmail(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i103.VerifyEmailBloc>(
      () => _i103.VerifyEmailBloc(verifyEmail: get<_i102.VerifyEmail>()));
  gh.lazySingleton<_i104.VerifyEsewaTopup>(() => _i104.VerifyEsewaTopup(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i105.VerifyEsewaTopupBloc>(() => _i105.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i104.VerifyEsewaTopup>()));
  gh.lazySingleton<_i106.VerifyImePayTopup>(() => _i106.VerifyImePayTopup(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i107.VerifyImePayTopupBloc>(() => _i107.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i106.VerifyImePayTopup>()));
  gh.lazySingleton<_i108.VerifyKhaltiTopup>(() => _i108.VerifyKhaltiTopup(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i109.VerifyKhaltiTopupBloc>(() => _i109.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i108.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i110.VerifyPrabhuPayTopup>(() => _i110.VerifyPrabhuPayTopup(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i111.VerifyPrabhuPayTopupBloc>(() =>
      _i111.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: get<_i110.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i112.AdsRemoteDataSource>(() =>
      _i112.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i14.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i113.AdsRepository>(() =>
      _i114.AdsRepositoryImpl(dataSource: get<_i112.AdsRemoteDataSource>()));
  gh.lazySingleton<_i115.ApplyCoupon>(() => _i115.ApplyCoupon(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i31.CouponRepository>()));
  gh.lazySingleton<_i116.DeleteCard>(() => _i116.DeleteCard(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i51.LoadBalanceRepositories>()));
  gh.factory<_i117.DeleteCardBloc>(
      () => _i117.DeleteCardBloc(deleteCard: get<_i116.DeleteCard>()));
  gh.factory<_i118.DeleteResumeData>(() => _i118.DeleteResumeData(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i119.GetAds>(() => _i119.GetAds(
      networkInfo: get<_i15.NetworkInfo>(),
      repository: get<_i113.AdsRepository>()));
  gh.lazySingleton<_i120.GetCountries>(() => _i120.GetCountries(
      repository: get<_i54.LocationInformationRepositoryProtocol>()));
  gh.factory<_i121.GetDownloadablePdfLink>(() => _i121.GetDownloadablePdfLink(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i122.GetFavouriteNews>(() =>
      _i122.GetFavouriteNews(repository: get<_i59.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i123.GetHomePageData>(() => _i123.GetHomePageData(
      repository: get<_i47.HomeReporisitory>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i124.GetIndivisualTransaction>(() =>
      _i124.GetIndivisualTransaction(
          repository: get<_i87.TransactionRepository>(),
          networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i125.GetLatestNews>(() => _i125.GetLatestNews(
      repository: get<_i59.NewsRepositoryProtocol>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i126.GetListOfCityFromPrefectures>(() =>
      _i126.GetListOfCityFromPrefectures(
          repository: get<_i54.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i127.GetListOfPaymentMethods>(() =>
      _i127.GetListOfPaymentMethods(
          networkInfo: get<_i15.NetworkInfo>(),
          repository: get<_i51.LoadBalanceRepositories>()));
  gh.lazySingleton<_i128.GetNewsForYou>(() => _i128.GetNewsForYou(
      repository: get<_i59.NewsRepositoryProtocol>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i129.GetNewsGenre>(
      () => _i129.GetNewsGenre(repository: get<_i59.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i130.GetNewsPreferences>(() =>
      _i130.GetNewsPreferences(repository: get<_i59.NewsRepositoryProtocol>()));
  gh.factory<_i131.GetPaymentMethodsBloc>(() => _i131.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i127.GetListOfPaymentMethods>(),
      deletecard: get<_i116.DeleteCard>()));
  gh.lazySingleton<_i132.GetPrefectureCityFromPostalCode>(() =>
      _i132.GetPrefectureCityFromPostalCode(
          repository: get<_i54.LocationInformationRepositoryProtocol>()));
  gh.factory<_i133.GetResume>(() => _i133.GetResume(
      repository: get<_i70.ResumeRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i134.GetSearchPageData>(() => _i134.GetSearchPageData(
      repository: get<_i74.SearchRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i135.GetSubscriptionDetailForPartnerService>(() =>
      _i135.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i15.NetworkInfo>(),
          repository: get<_i98.UtilityPaymentRepository>()));
  gh.lazySingleton<_i136.GetTransactions>(() => _i136.GetTransactions(
      repository: get<_i87.TransactionRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i137.HomePageDataBloc>(() =>
      _i137.HomePageDataBloc(getHomePageData: get<_i123.GetHomePageData>()));
  gh.factory<_i138.IndividualTransactionBloc>(() =>
      _i138.IndividualTransactionBloc(
          getIndividualTxn: get<_i124.GetIndivisualTransaction>()));
  gh.lazySingleton<_i139.JapaneseMannerRepository>(() =>
      _i140.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i49.JapaneseMannersRemoteDataSource>(),
          logger: get<_i13.Logger>()));
  gh.lazySingleton<_i141.LatestNewsBloc>(
      () => _i141.LatestNewsBloc(getNews: get<_i125.GetLatestNews>()));
  gh.factory<_i142.LocationViaPostalCodeBloc>(() =>
      _i142.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i132.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i143.NewsBloc>(
      () => _i143.NewsBloc(getNews: get<_i128.GetNewsForYou>()));
  gh.factory<_i144.NewsGenreBloc>(
      () => _i144.NewsGenreBloc(getNewsGenre: get<_i129.GetNewsGenre>()));
  gh.factory<_i145.NewsPreferenceBloc>(() => _i145.NewsPreferenceBloc(
      getNewsPreferences: get<_i130.GetNewsPreferences>()));
  gh.lazySingleton<_i146.NotificationRepository>(() =>
      _i147.NotificationRepositoryImpl(
          dataSource: get<_i61.NotificationsRemoteDataSource>(),
          logger: get<_i13.Logger>()));
  gh.factory<_i148.ParnterServicesBloc>(() => _i148.ParnterServicesBloc(
      getPartnerServices: get<_i149.GetPartnerServices>()));
  gh.factory<_i150.PartnerServiceCategoriesBloc>(() =>
      _i150.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i151.GetPartnerServicesCategories>()));
  gh.factory<_i152.PasswordResetBloc>(() => _i152.PasswordResetBloc(
      resetPasswordUseCase: get<_i68.ResetPasswordUseCase>()));
  gh.lazySingleton<_i153.PurchaseSubscriptionFromPartnerService>(() =>
      _i153.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i15.NetworkInfo>(),
          repository: get<_i98.UtilityPaymentRepository>()));
  gh.factory<_i154.RedeemCouponBloc>(() => _i154.RedeemCouponBloc(
      applyCoupon: get<_i115.ApplyCoupon>(),
      redeemCoupon: get<_i67.RedeemCoupon>()));
  gh.lazySingleton<_i155.ResumeWatcherBloc>(() => _i155.ResumeWatcherBloc(
      getResume: get<_i133.GetResume>(),
      deleteResumeData: get<_i118.DeleteResumeData>()));
  gh.lazySingleton<_i156.RewardPointRepository>(() =>
      _i157.RewardPointRepositoryImpl(
          dataSource: get<_i72.RewardPointsRemoteDataSource>(),
          logger: get<_i13.Logger>()));
  gh.factory<_i158.SearchBloc>(
      () => _i158.SearchBloc(get<_i134.GetSearchPageData>()));
  gh.factory<_i159.SignInFormBloc>(() => _i159.SignInFormBloc(
      signInWithEmailUsecase: get<_i77.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i76.SignInWithApple>(),
      signInWithFacebook: get<_i78.SignInWithFacebook>(),
      signInWithGoogle: get<_i79.SignInWithGoogle>()));
  gh.factory<_i160.SignUpFormBloc>(() => _i160.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i80.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i161.SubscriptionForPartnerServiceBloc>(() =>
      _i161.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i135.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i153.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i162.TopUpBalanceForMobile>(() =>
      _i162.TopUpBalanceForMobile(
          networkInfo: get<_i15.NetworkInfo>(),
          repository: get<_i98.UtilityPaymentRepository>()));
  gh.factory<_i163.TopUpBalanceInMobileBloc>(() =>
      _i163.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i162.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i164.TransactionBloc>(() =>
      _i164.TransactionBloc(getTransaction: get<_i136.GetTransactions>()));
  gh.factory<_i165.UpdateProfileBloc>(() => _i165.UpdateProfileBloc(
      updateKycInfo: get<_i91.UpdateKycInfo>(),
      updateResumeImage: get<_i95.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i126.GetListOfCityFromPrefectures>()));
  gh.factory<_i166.AdsBloc>(() =>
      _i166.AdsBloc(get<_i119.GetAds>(), get<_i112.AdsRemoteDataSource>()));
  gh.factory<_i167.DownloadPdfBloc>(() => _i167.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i121.GetDownloadablePdfLink>()));
  gh.factory<_i168.FavouriteNewsBloc>(() =>
      _i168.FavouriteNewsBloc(getFavouriteNews: get<_i122.GetFavouriteNews>()));
  gh.lazySingleton<_i169.GetNotifications>(() => _i169.GetNotifications(
      repository: get<_i146.NotificationRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i170.GetRewardPoints>(() => _i170.GetRewardPoints(
      repository: get<_i156.RewardPointRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.factory<_i171.JapaneseMannerBloc>(() => _i171.JapaneseMannerBloc(
      getJapaneseManner: get<_i172.GetJapaneseManner>()));
  gh.factory<_i173.JapaneseMannerCategoriesBloc>(() =>
      _i173.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i174.GetJapaneseMannerCategories>()));
  gh.factory<_i175.JapaneseMannerDetailBloc>(() =>
      _i175.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i176.GetJapaneseMannerDetail>()));
  gh.factory<_i177.NotificationsBloc>(() =>
      _i177.NotificationsBloc(getNotifications: get<_i169.GetNotifications>()));
  gh.factory<_i178.RewardPointBloc>(() =>
      _i178.RewardPointBloc(getRewardPoints: get<_i170.GetRewardPoints>()));
  gh.singleton<_i14.ConfigReader>(_i14.ConfigReaderImpl());
  gh.singleton<_i179.DBProvider>(_i179.DBProviderImpl());
  gh.singleton<_i58.NewsLocalProvider>(
      _i58.NewsLocalProviderImpl(provider: get<_i179.DBProvider>()));
  gh.singleton<_i66.PurchasePackage>(_i66.PurchasePackage(
      repository: get<_i63.PartnerServicesRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.singleton<_i149.GetPartnerServices>(_i149.GetPartnerServices(
      repository: get<_i63.PartnerServicesRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.singleton<_i151.GetPartnerServicesCategories>(
      _i151.GetPartnerServicesCategories(
          repository: get<_i63.PartnerServicesRepository>(),
          networkInfo: get<_i15.NetworkInfo>()));
  gh.singleton<_i172.GetJapaneseManner>(_i172.GetJapaneseManner(
      repository: get<_i139.JapaneseMannerRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  gh.singleton<_i174.GetJapaneseMannerCategories>(
      _i174.GetJapaneseMannerCategories(
          repository: get<_i139.JapaneseMannerRepository>(),
          networkInfo: get<_i15.NetworkInfo>()));
  gh.singleton<_i176.GetJapaneseMannerDetail>(_i176.GetJapaneseMannerDetail(
      repository: get<_i139.JapaneseMannerRepository>(),
      networkInfo: get<_i15.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i180.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i181.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i182.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i183.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i184.SharedPreferenceModule {}
