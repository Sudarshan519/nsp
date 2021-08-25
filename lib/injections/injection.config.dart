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

import '../core/database/local_database_provider.dart' as _i178;
import '../core/database/news_provider.dart' as _i57;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i17;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i111;
import '../features/ads/data/repository/ads_repository.dart' as _i113;
import '../features/ads/domain/repositories/ads_repository.dart' as _i112;
import '../features/ads/domain/use_case/get_ads.dart' as _i118;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i165;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i19;
import '../features/alerts/data/repository/alert_repository.dart' as _i21;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i20;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i32;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i38;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i40;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i43;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i33;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i39;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i41;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i44;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i22;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i23;
import '../features/auth/data/repository/auth_repository.dart' as _i25;
import '../features/auth/domain/repositories/auth_repository.dart' as _i24;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i42;
import '../features/auth/domain/usecase/logout_user.dart' as _i55;
import '../features/auth/domain/usecase/reset_password.dart' as _i67;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i75;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i76;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i77;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i78;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i79;
import '../features/auth/domain/usecase/verify_email.dart' as _i101;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i151;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i158;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i159;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i102;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i29;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i31;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i30;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i114;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i36;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i66;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i99;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i37;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i153;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i100;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i45;
import '../features/home/data/repositories/home_repository.dart' as _i47;
import '../features/home/domain/repositories/home_repository.dart' as _i46;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i122;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i136;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i48;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i139;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i138;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i171;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i173;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i175;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i170;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i172;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i174;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i49;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i51;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i50;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i115;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i126;
import '../features/load_balance/domain/usecases/stripe_refund.dart' as _i81;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i83;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i103;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i105;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i107;
import '../features/load_balance/domain/usecases/verify_prabhu_pay_top_up.dart'
    as _i109;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i116;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i104;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i130;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i106;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i108;
import '../features/load_balance/presentations/prabhu_pay/prabhu_pay_form/prabhu_pay_form_cubit.dart'
    as _i16;
import '../features/load_balance/presentations/prabhu_pay/verify_prabhu_pay_topup/verify_prabhu_pay_topup_bloc.dart'
    as _i110;
import '../features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart'
    as _i82;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i84;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i52;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i54;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i53;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i119;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i125;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i131;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i141;
import '../features/news/data/datasource/news_local_data_source.dart' as _i56;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i59;
import '../features/news/domain/repository/news_repository.dart' as _i58;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i121;
import '../features/news/domain/usecase/get_latest_news.dart' as _i124;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i127;
import '../features/news/domain/usecase/get_news_genre.dart' as _i128;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i129;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i167;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i140;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i142;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i143;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i144;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i60;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i146;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i145;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i168;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i176;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i61;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i63;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i62;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i148;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i150;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i65;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i147;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i149;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i64;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i26;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i28;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i27;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i34;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i35;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i164;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i68;
import '../features/resume/data/repository/resume_repository.dart' as _i70;
import '../features/resume/domain/repository/resume_repository.dart' as _i69;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i117;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i120;
import '../features/resume/domain/usecases/get_resume.dart' as _i132;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i88;
import '../features/resume/domain/usecases/update_address_info.dart' as _i89;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i90;
import '../features/resume/domain/usecases/update_other_info.dart' as _i91;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i92;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i93;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i94;
import '../features/resume/domain/usecases/update_work_info.dart' as _i95;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i166;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i154;
import '../features/reward_points/data/datasource/reward_points_remote_data_source.dart'
    as _i71;
import '../features/reward_points/data/repository/reward_points_repository.dart'
    as _i156;
import '../features/reward_points/domain/repository/reward_point_repository.dart'
    as _i155;
import '../features/reward_points/domain/use_case/get_reward_points.dart'
    as _i169;
import '../features/reward_points/presentation/reward_point/reward_point_bloc.dart'
    as _i177;
import '../features/search/data/datasource/search_remote_data_source.dart'
    as _i72;
import '../features/search/data/repository/search_repository.dart' as _i74;
import '../features/search/domain/repositories/search_repository.dart' as _i73;
import '../features/search/domain/usecases/get_search_page_data.dart' as _i133;
import '../features/search/presentation/bloc/search_bloc.dart' as _i157;
import '../features/splash/presentation/splash_bloc.dart' as _i80;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i85;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i87;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i86;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i123;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i135;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i137;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i163;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i96;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i98;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i97;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i134;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i152;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i161;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i160;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i162;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i182;
import 'injectable/flutter_secure_storage_module.dart' as _i180;
import 'injectable/google_login_injectable_module.dart' as _i181;
import 'injectable/http_client_injectable_module.dart' as _i179;
import 'injectable/shared_preference_module.dart'
    as _i183; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i29.CouponRemoteDataSource>(() =>
      _i29.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i30.CouponRepository>(() => _i31.CouponRepositoryImpl(
      dataSource: get<_i29.CouponRemoteDataSource>()));
  gh.lazySingleton<_i32.GetAlerts>(() => _i32.GetAlerts(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i33.GetAlertsBloc>(
      () => _i33.GetAlertsBloc(getAlerts: get<_i32.GetAlerts>()));
  gh.lazySingleton<_i34.GetBalance>(() => _i34.GetBalance(
      repository: get<_i27.BalanceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i35.GetBalanceBloc>(
      () => _i35.GetBalanceBloc(getBalance: get<_i34.GetBalance>()));
  gh.lazySingleton<_i36.GetCouponList>(() => _i36.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i30.CouponRepository>()));
  gh.factory<_i37.GetCouponListBloc>(
      () => _i37.GetCouponListBloc(getCouponList: get<_i36.GetCouponList>()));
  gh.lazySingleton<_i38.GetEarthquakes>(() => _i38.GetEarthquakes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i39.GetEarthquakesBloc>(() =>
      _i39.GetEarthquakesBloc(getEarthquakes: get<_i38.GetEarthquakes>()));
  gh.lazySingleton<_i40.GetVolcanoes>(() => _i40.GetVolcanoes(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i41.GetVolcanoesBloc>(
      () => _i41.GetVolcanoesBloc(getVolcanoes: get<_i40.GetVolcanoes>()));
  gh.lazySingleton<_i42.GetWalletUser>(
      () => _i42.GetWalletUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i43.GetWeathers>(() => _i43.GetWeathers(
      repository: get<_i20.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i44.GetWeathersBloc>(
      () => _i44.GetWeathersBloc(getWeathers: get<_i43.GetWeathers>()));
  gh.lazySingleton<_i45.HomePageRemoteDataSource>(() =>
      _i45.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i46.HomeReporisitory>(() => _i47.HomeRepositoryImpl(
      remoteDataSource: get<_i45.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i48.JapaneseMannersRemoteDataSource>(() =>
      _i48.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i49.LoadBalanceDataSource>(() =>
      _i49.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i50.LoadBalanceRepositories>(() =>
      _i51.LoadBalanceRepositoriesImpl(
          dataSource: get<_i49.LoadBalanceDataSource>()));
  gh.lazySingleton<_i52.LocationInformationLocalDataSourceProtocol>(() =>
      _i52.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i53.LocationInformationRepositoryProtocol>(() =>
      _i54.LocationInformationRepository(
          dataSource: get<_i52.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i55.LogoutUser>(
      () => _i55.LogoutUser(repository: get<_i24.AuthRepository>()));
  gh.lazySingleton<_i56.NewsLocalDataSourceProtocol>(() =>
      _i56.NewsLocalDataSource(
          localProvider: get<_i57.NewsLocalProvider>(),
          preferences: get<_i18.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i58.NewsRepositoryProtocol>(() => _i59.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i56.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i60.NotificationsRemoteDataSource>(() =>
      _i60.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i61.PartnerServicesRemoteDataSource>(() =>
      _i61.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i22.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i62.PartnerServicesRepository>(() =>
      _i63.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i61.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i64.PurchasePackageBloc>(() =>
      _i64.PurchasePackageBloc(purchasePackage: get<_i65.PurchasePackage>()));
  gh.lazySingleton<_i66.RedeemCoupon>(() => _i66.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i30.CouponRepository>()));
  gh.lazySingleton<_i67.ResetPasswordUseCase>(() => _i67.ResetPasswordUseCase(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i68.ResumeRemoteDataSource>(() =>
      _i68.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i69.ResumeRepository>(() => _i70.ResumeRepositoryImpl(
      dataSource: get<_i68.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i71.RewardPointsRemoteDataSource>(() =>
      _i71.RewardPointsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i72.SearchPageRemoteDataSource>(() =>
      _i72.SearchPageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i73.SearchRepository>(() => _i74.SearchRepositoryImpl(
      dataSource: get<_i72.SearchPageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i75.SignInWithApple>(() => _i75.SignInWithApple(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i76.SignInWithEmailAndPassword>(() =>
      _i76.SignInWithEmailAndPassword(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i77.SignInWithFacebook>(() => _i77.SignInWithFacebook(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i78.SignInWithGoogle>(() => _i78.SignInWithGoogle(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i79.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i79.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i24.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i80.SplashBloc>(
      () => _i80.SplashBloc(getWalletUser: get<_i42.GetWalletUser>()));
  gh.lazySingleton<_i81.StripeRefund>(() => _i81.StripeRefund(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i82.StripeRefundBloc>(
      () => _i82.StripeRefundBloc(stripeRefund: get<_i81.StripeRefund>()));
  gh.lazySingleton<_i83.TopUpViaStripe>(() => _i83.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i84.TopupViaStripeBloc>(() =>
      _i84.TopupViaStripeBloc(topUpViaStripe: get<_i83.TopUpViaStripe>()));
  gh.lazySingleton<_i85.TransactionRemoteDataSource>(() =>
      _i85.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i86.TransactionRepository>(() =>
      _i87.TransactionRepositoryImpl(
          dataSource: get<_i85.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i88.UpdateAcadamicInfo>(() => _i88.UpdateAcadamicInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i89.UpdateAddressInfo>(() => _i89.UpdateAddressInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i90.UpdateKycInfo>(() => _i90.UpdateKycInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i91.UpdateOtherInfo>(() => _i91.UpdateOtherInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i92.UpdatePersonalInfo>(() => _i92.UpdatePersonalInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i93.UpdateQualificationInfo>(() => _i93.UpdateQualificationInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i94.UpdateResumeImage>(() => _i94.UpdateResumeImage(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i95.UpdateWorkInfo>(() => _i95.UpdateWorkInfo(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i96.UtilityPaymentDataSource>(() =>
      _i96.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i97.UtilityPaymentRepository>(() =>
      _i98.UtilityPaymentRepositoryImpl(
          dataSource: get<_i96.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i99.VerifyCoupon>(() => _i99.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i30.CouponRepository>()));
  gh.factory<_i100.VerifyCouponBloc>(
      () => _i100.VerifyCouponBloc(verifyCoupon: get<_i99.VerifyCoupon>()));
  gh.lazySingleton<_i101.VerifyEmail>(() => _i101.VerifyEmail(
      repository: get<_i24.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i102.VerifyEmailBloc>(
      () => _i102.VerifyEmailBloc(verifyEmail: get<_i101.VerifyEmail>()));
  gh.lazySingleton<_i103.VerifyEsewaTopup>(() => _i103.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i104.VerifyEsewaTopupBloc>(() => _i104.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i103.VerifyEsewaTopup>()));
  gh.lazySingleton<_i105.VerifyImePayTopup>(() => _i105.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i106.VerifyImePayTopupBloc>(() => _i106.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i105.VerifyImePayTopup>()));
  gh.lazySingleton<_i107.VerifyKhaltiTopup>(() => _i107.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i108.VerifyKhaltiTopupBloc>(() => _i108.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i107.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i109.VerifyPrabhuPayTopup>(() => _i109.VerifyPrabhuPayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i110.VerifyPrabhuPayTopupBloc>(() =>
      _i110.VerifyPrabhuPayTopupBloc(
          verifyPrabhuPayTopup: get<_i109.VerifyPrabhuPayTopup>()));
  gh.lazySingleton<_i111.AdsRemoteDataSource>(() =>
      _i111.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i22.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i112.AdsRepository>(() =>
      _i113.AdsRepositoryImpl(dataSource: get<_i111.AdsRemoteDataSource>()));
  gh.lazySingleton<_i114.ApplyCoupon>(() => _i114.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i30.CouponRepository>()));
  gh.lazySingleton<_i115.DeleteCard>(() => _i115.DeleteCard(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i50.LoadBalanceRepositories>()));
  gh.factory<_i116.DeleteCardBloc>(
      () => _i116.DeleteCardBloc(deleteCard: get<_i115.DeleteCard>()));
  gh.factory<_i117.DeleteResumeData>(() => _i117.DeleteResumeData(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i118.GetAds>(() => _i118.GetAds(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i112.AdsRepository>()));
  gh.lazySingleton<_i119.GetCountries>(() => _i119.GetCountries(
      repository: get<_i53.LocationInformationRepositoryProtocol>()));
  gh.factory<_i120.GetDownloadablePdfLink>(() => _i120.GetDownloadablePdfLink(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i121.GetFavouriteNews>(() =>
      _i121.GetFavouriteNews(repository: get<_i58.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i122.GetHomePageData>(() => _i122.GetHomePageData(
      repository: get<_i46.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i123.GetIndivisualTransaction>(() =>
      _i123.GetIndivisualTransaction(
          repository: get<_i86.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i124.GetLatestNews>(() => _i124.GetLatestNews(
      repository: get<_i58.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i125.GetListOfCityFromPrefectures>(() =>
      _i125.GetListOfCityFromPrefectures(
          repository: get<_i53.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i126.GetListOfPaymentMethods>(() =>
      _i126.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i50.LoadBalanceRepositories>()));
  gh.lazySingleton<_i127.GetNewsForYou>(() => _i127.GetNewsForYou(
      repository: get<_i58.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i128.GetNewsGenre>(
      () => _i128.GetNewsGenre(repository: get<_i58.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i129.GetNewsPreferences>(() =>
      _i129.GetNewsPreferences(repository: get<_i58.NewsRepositoryProtocol>()));
  gh.factory<_i130.GetPaymentMethodsBloc>(() => _i130.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i126.GetListOfPaymentMethods>(),
      deletecard: get<_i115.DeleteCard>()));
  gh.lazySingleton<_i131.GetPrefectureCityFromPostalCode>(() =>
      _i131.GetPrefectureCityFromPostalCode(
          repository: get<_i53.LocationInformationRepositoryProtocol>()));
  gh.factory<_i132.GetResume>(() => _i132.GetResume(
      repository: get<_i69.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i133.GetSearchPageData>(() => _i133.GetSearchPageData(
      repository: get<_i73.SearchRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i134.GetSubscriptionDetailForPartnerService>(() =>
      _i134.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i97.UtilityPaymentRepository>()));
  gh.lazySingleton<_i135.GetTransactions>(() => _i135.GetTransactions(
      repository: get<_i86.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i136.HomePageDataBloc>(() =>
      _i136.HomePageDataBloc(getHomePageData: get<_i122.GetHomePageData>()));
  gh.factory<_i137.IndividualTransactionBloc>(() =>
      _i137.IndividualTransactionBloc(
          getIndividualTxn: get<_i123.GetIndivisualTransaction>()));
  gh.lazySingleton<_i138.JapaneseMannerRepository>(() =>
      _i139.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i48.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i140.LatestNewsBloc>(
      () => _i140.LatestNewsBloc(getNews: get<_i124.GetLatestNews>()));
  gh.factory<_i141.LocationViaPostalCodeBloc>(() =>
      _i141.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i131.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i142.NewsBloc>(
      () => _i142.NewsBloc(getNews: get<_i127.GetNewsForYou>()));
  gh.factory<_i143.NewsGenreBloc>(
      () => _i143.NewsGenreBloc(getNewsGenre: get<_i128.GetNewsGenre>()));
  gh.factory<_i144.NewsPreferenceBloc>(() => _i144.NewsPreferenceBloc(
      getNewsPreferences: get<_i129.GetNewsPreferences>()));
  gh.lazySingleton<_i145.NotificationRepository>(() =>
      _i146.NotificationRepositoryImpl(
          dataSource: get<_i60.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i147.ParnterServicesBloc>(() => _i147.ParnterServicesBloc(
      getPartnerServices: get<_i148.GetPartnerServices>()));
  gh.factory<_i149.PartnerServiceCategoriesBloc>(() =>
      _i149.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i150.GetPartnerServicesCategories>()));
  gh.factory<_i151.PasswordResetBloc>(() => _i151.PasswordResetBloc(
      resetPasswordUseCase: get<_i67.ResetPasswordUseCase>()));
  gh.lazySingleton<_i152.PurchaseSubscriptionFromPartnerService>(() =>
      _i152.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i97.UtilityPaymentRepository>()));
  gh.factory<_i153.RedeemCouponBloc>(() => _i153.RedeemCouponBloc(
      applyCoupon: get<_i114.ApplyCoupon>(),
      redeemCoupon: get<_i66.RedeemCoupon>()));
  gh.lazySingleton<_i154.ResumeWatcherBloc>(() => _i154.ResumeWatcherBloc(
      getResume: get<_i132.GetResume>(),
      deleteResumeData: get<_i117.DeleteResumeData>()));
  gh.lazySingleton<_i155.RewardPointRepository>(() =>
      _i156.RewardPointRepositoryImpl(
          dataSource: get<_i71.RewardPointsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i157.SearchBloc>(
      () => _i157.SearchBloc(get<_i133.GetSearchPageData>()));
  gh.factory<_i158.SignInFormBloc>(() => _i158.SignInFormBloc(
      signInWithEmailUsecase: get<_i76.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i75.SignInWithApple>(),
      signInWithFacebook: get<_i77.SignInWithFacebook>(),
      signInWithGoogle: get<_i78.SignInWithGoogle>()));
  gh.factory<_i159.SignUpFormBloc>(() => _i159.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i79.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i160.SubscriptionForPartnerServiceBloc>(() =>
      _i160.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i134.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i152.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i161.TopUpBalanceForMobile>(() =>
      _i161.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i97.UtilityPaymentRepository>()));
  gh.factory<_i162.TopUpBalanceInMobileBloc>(() =>
      _i162.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i161.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i163.TransactionBloc>(() =>
      _i163.TransactionBloc(getTransaction: get<_i135.GetTransactions>()));
  gh.factory<_i164.UpdateProfileBloc>(() => _i164.UpdateProfileBloc(
      updateKycInfo: get<_i90.UpdateKycInfo>(),
      updateResumeImage: get<_i94.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i125.GetListOfCityFromPrefectures>()));
  gh.factory<_i165.AdsBloc>(() =>
      _i165.AdsBloc(get<_i118.GetAds>(), get<_i111.AdsRemoteDataSource>()));
  gh.factory<_i166.DownloadPdfBloc>(() => _i166.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i120.GetDownloadablePdfLink>()));
  gh.factory<_i167.FavouriteNewsBloc>(() =>
      _i167.FavouriteNewsBloc(getFavouriteNews: get<_i121.GetFavouriteNews>()));
  gh.lazySingleton<_i168.GetNotifications>(() => _i168.GetNotifications(
      repository: get<_i145.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i169.GetRewardPoints>(() => _i169.GetRewardPoints(
      repository: get<_i155.RewardPointRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i170.JapaneseMannerBloc>(() => _i170.JapaneseMannerBloc(
      getJapaneseManner: get<_i171.GetJapaneseManner>()));
  gh.factory<_i172.JapaneseMannerCategoriesBloc>(() =>
      _i172.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i173.GetJapaneseMannerCategories>()));
  gh.factory<_i174.JapaneseMannerDetailBloc>(() =>
      _i174.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i175.GetJapaneseMannerDetail>()));
  gh.factory<_i176.NotificationsBloc>(() =>
      _i176.NotificationsBloc(getNotifications: get<_i168.GetNotifications>()));
  gh.factory<_i177.RewardPointBloc>(() =>
      _i177.RewardPointBloc(getRewardPoints: get<_i169.GetRewardPoints>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i178.DBProvider>(_i178.DBProviderImpl());
  gh.singleton<_i57.NewsLocalProvider>(
      _i57.NewsLocalProviderImpl(provider: get<_i178.DBProvider>()));
  gh.singleton<_i65.PurchasePackage>(_i65.PurchasePackage(
      repository: get<_i62.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i148.GetPartnerServices>(_i148.GetPartnerServices(
      repository: get<_i62.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i150.GetPartnerServicesCategories>(
      _i150.GetPartnerServicesCategories(
          repository: get<_i62.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i171.GetJapaneseManner>(_i171.GetJapaneseManner(
      repository: get<_i138.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i173.GetJapaneseMannerCategories>(
      _i173.GetJapaneseMannerCategories(
          repository: get<_i138.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i175.GetJapaneseMannerDetail>(_i175.GetJapaneseMannerDetail(
      repository: get<_i138.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i179.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i180.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i181.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i182.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i183.SharedPreferenceModule {}
