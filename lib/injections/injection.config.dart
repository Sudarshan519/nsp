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

import '../core/database/local_database_provider.dart' as _i163;
import '../core/database/news_provider.dart' as _i56;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i16;
import '../features/ads/data/data_source/ads_remote_datasource.dart' as _i102;
import '../features/ads/data/repository/ads_repository.dart' as _i104;
import '../features/ads/domain/repositories/ads_repository.dart' as _i103;
import '../features/ads/domain/use_case/get_ads.dart' as _i109;
import '../features/ads/presentation/get_ads/ads_bloc.dart' as _i152;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i18;
import '../features/alerts/data/repository/alert_repository.dart' as _i20;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i19;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i31;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i37;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i39;
import '../features/alerts/domain/usecase/get_weathers.dart' as _i42;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i32;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i38;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i40;
import '../features/alerts/presentation/get_weathers/get_weathers_bloc.dart'
    as _i43;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i21;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i22;
import '../features/auth/data/repository/auth_repository.dart' as _i24;
import '../features/auth/domain/repositories/auth_repository.dart' as _i23;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i41;
import '../features/auth/domain/usecase/logout_user.dart' as _i54;
import '../features/auth/domain/usecase/reset_password.dart' as _i66;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i70;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i71;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i72;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i73;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i74;
import '../features/auth/domain/usecase/verify_email.dart' as _i94;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i141;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i145;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i146;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i95;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i28;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i30;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i29;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i105;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i35;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i65;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i92;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i36;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i143;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i93;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i44;
import '../features/home/data/repositories/home_repository.dart' as _i46;
import '../features/home/domain/repositories/home_repository.dart' as _i45;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i113;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i126;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i47;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i129;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i128;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i157;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i159;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_detail.dart'
    as _i161;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i156;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i158;
import '../features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart'
    as _i160;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i48;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i50;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i49;
import '../features/load_balance/domain/usecases/delete_card.dart' as _i106;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i117;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i76;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i96;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i98;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i100;
import '../features/load_balance/presentations/delete_card/delete_card_bloc.dart'
    as _i107;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i97;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i121;
import '../features/load_balance/presentations/ime_pay/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/ime_pay/verify_ime_pay_topup/verify_ime_pay_topup_bloc.dart'
    as _i99;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i101;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i77;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i51;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i53;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i52;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i110;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i116;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i122;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i131;
import '../features/news/data/datasource/news_local_data_source.dart' as _i55;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i58;
import '../features/news/domain/repository/news_repository.dart' as _i57;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i112;
import '../features/news/domain/usecase/get_latest_news.dart' as _i115;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i118;
import '../features/news/domain/usecase/get_news_genre.dart' as _i119;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i120;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i154;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i130;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i132;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i133;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i134;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i59;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i136;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i135;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i155;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i162;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i60;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i62;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i61;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i138;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i140;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i64;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i137;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i139;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i63;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i25;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i27;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i26;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i33;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i34;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i151;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i67;
import '../features/resume/data/repository/resume_repository.dart' as _i69;
import '../features/resume/domain/repository/resume_repository.dart' as _i68;
import '../features/resume/domain/usecases/delete_resume_data.dart' as _i108;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i111;
import '../features/resume/domain/usecases/get_resume.dart' as _i123;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i81;
import '../features/resume/domain/usecases/update_address_info.dart' as _i82;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i83;
import '../features/resume/domain/usecases/update_other_info.dart' as _i84;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i85;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i86;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i87;
import '../features/resume/domain/usecases/update_work_info.dart' as _i88;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i153;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i144;
import '../features/splash/presentation/splash_bloc.dart' as _i75;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i78;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i80;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i79;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i114;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i125;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i127;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i150;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i89;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i91;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i90;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i124;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i142;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i148;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i147;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i149;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i167;
import 'injectable/flutter_secure_storage_module.dart' as _i165;
import 'injectable/google_login_injectable_module.dart' as _i166;
import 'injectable/http_client_injectable_module.dart' as _i164;
import 'injectable/shared_preference_module.dart'
    as _i168; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i25.BalanceRemoteDataSource>(() =>
      _i25.BalanceRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i26.BalanceRepository>(() => _i27.BalanceRepositoryImpl(
      dataSource: get<_i25.BalanceRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i28.CouponRemoteDataSource>(() =>
      _i28.CouponRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i29.CouponRepository>(() => _i30.CouponRepositoryImpl(
      dataSource: get<_i28.CouponRemoteDataSource>()));
  gh.lazySingleton<_i31.GetAlerts>(() => _i31.GetAlerts(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i32.GetAlertsBloc>(
      () => _i32.GetAlertsBloc(getAlerts: get<_i31.GetAlerts>()));
  gh.lazySingleton<_i33.GetBalance>(() => _i33.GetBalance(
      repository: get<_i26.BalanceRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i34.GetBalanceBloc>(
      () => _i34.GetBalanceBloc(getBalance: get<_i33.GetBalance>()));
  gh.lazySingleton<_i35.GetCouponList>(() => _i35.GetCouponList(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.factory<_i36.GetCouponListBloc>(
      () => _i36.GetCouponListBloc(getCouponList: get<_i35.GetCouponList>()));
  gh.lazySingleton<_i37.GetEarthquakes>(() => _i37.GetEarthquakes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i38.GetEarthquakesBloc>(() =>
      _i38.GetEarthquakesBloc(getEarthquakes: get<_i37.GetEarthquakes>()));
  gh.lazySingleton<_i39.GetVolcanoes>(() => _i39.GetVolcanoes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i40.GetVolcanoesBloc>(
      () => _i40.GetVolcanoesBloc(getVolcanoes: get<_i39.GetVolcanoes>()));
  gh.lazySingleton<_i41.GetWalletUser>(
      () => _i41.GetWalletUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i42.GetWeathers>(() => _i42.GetWeathers(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i43.GetWeathersBloc>(
      () => _i43.GetWeathersBloc(getWeathers: get<_i42.GetWeathers>()));
  gh.lazySingleton<_i44.HomePageRemoteDataSource>(() =>
      _i44.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i45.HomeReporisitory>(() => _i46.HomeRepositoryImpl(
      remoteDataSource: get<_i44.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i47.JapaneseMannersRemoteDataSource>(() =>
      _i47.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i48.LoadBalanceDataSource>(() =>
      _i48.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i49.LoadBalanceRepositories>(() =>
      _i50.LoadBalanceRepositoriesImpl(
          dataSource: get<_i48.LoadBalanceDataSource>()));
  gh.lazySingleton<_i51.LocationInformationLocalDataSourceProtocol>(() =>
      _i51.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i52.LocationInformationRepositoryProtocol>(() =>
      _i53.LocationInformationRepository(
          dataSource: get<_i51.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i54.LogoutUser>(
      () => _i54.LogoutUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i55.NewsLocalDataSourceProtocol>(() =>
      _i55.NewsLocalDataSource(
          localProvider: get<_i56.NewsLocalProvider>(),
          preferences: get<_i17.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i57.NewsRepositoryProtocol>(() => _i58.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i55.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i59.NotificationsRemoteDataSource>(() =>
      _i59.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i60.PartnerServicesRemoteDataSource>(() =>
      _i60.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i21.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i61.PartnerServicesRepository>(() =>
      _i62.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i60.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i63.PurchasePackageBloc>(() =>
      _i63.PurchasePackageBloc(purchasePackage: get<_i64.PurchasePackage>()));
  gh.lazySingleton<_i65.RedeemCoupon>(() => _i65.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.lazySingleton<_i66.ResetPasswordUseCase>(() => _i66.ResetPasswordUseCase(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i67.ResumeRemoteDataSource>(() =>
      _i67.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i68.ResumeRepository>(() => _i69.ResumeRepositoryImpl(
      dataSource: get<_i67.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i70.SignInWithApple>(() => _i70.SignInWithApple(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i71.SignInWithEmailAndPassword>(() =>
      _i71.SignInWithEmailAndPassword(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i72.SignInWithFacebook>(() => _i72.SignInWithFacebook(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i73.SignInWithGoogle>(() => _i73.SignInWithGoogle(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i74.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i74.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i75.SplashBloc>(
      () => _i75.SplashBloc(getWalletUser: get<_i41.GetWalletUser>()));
  gh.lazySingleton<_i76.TopUpViaStripe>(() => _i76.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i49.LoadBalanceRepositories>()));
  gh.factory<_i77.TopupViaStripeBloc>(() =>
      _i77.TopupViaStripeBloc(topUpViaStripe: get<_i76.TopUpViaStripe>()));
  gh.lazySingleton<_i78.TransactionRemoteDataSource>(() =>
      _i78.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i79.TransactionRepository>(() =>
      _i80.TransactionRepositoryImpl(
          dataSource: get<_i78.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i81.UpdateAcadamicInfo>(() => _i81.UpdateAcadamicInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i82.UpdateAddressInfo>(() => _i82.UpdateAddressInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i83.UpdateKycInfo>(() => _i83.UpdateKycInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i84.UpdateOtherInfo>(() => _i84.UpdateOtherInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i85.UpdatePersonalInfo>(() => _i85.UpdatePersonalInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i86.UpdateQualificationInfo>(() => _i86.UpdateQualificationInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i87.UpdateResumeImage>(() => _i87.UpdateResumeImage(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i88.UpdateWorkInfo>(() => _i88.UpdateWorkInfo(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i89.UtilityPaymentDataSource>(() =>
      _i89.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i90.UtilityPaymentRepository>(() =>
      _i91.UtilityPaymentRepositoryImpl(
          dataSource: get<_i89.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i92.VerifyCoupon>(() => _i92.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.factory<_i93.VerifyCouponBloc>(
      () => _i93.VerifyCouponBloc(verifyCoupon: get<_i92.VerifyCoupon>()));
  gh.lazySingleton<_i94.VerifyEmail>(() => _i94.VerifyEmail(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i95.VerifyEmailBloc>(
      () => _i95.VerifyEmailBloc(verifyEmail: get<_i94.VerifyEmail>()));
  gh.lazySingleton<_i96.VerifyEsewaTopup>(() => _i96.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i49.LoadBalanceRepositories>()));
  gh.factory<_i97.VerifyEsewaTopupBloc>(() => _i97.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i96.VerifyEsewaTopup>()));
  gh.lazySingleton<_i98.VerifyImePayTopup>(() => _i98.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i49.LoadBalanceRepositories>()));
  gh.factory<_i99.VerifyImePayTopupBloc>(() => _i99.VerifyImePayTopupBloc(
      verifyImePayTopup: get<_i98.VerifyImePayTopup>()));
  gh.lazySingleton<_i100.VerifyKhaltiTopup>(() => _i100.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i49.LoadBalanceRepositories>()));
  gh.factory<_i101.VerifyKhaltiTopupBloc>(() => _i101.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i100.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i102.AdsRemoteDataSource>(() =>
      _i102.AdsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i103.AdsRepository>(() =>
      _i104.AdsRepositoryImpl(dataSource: get<_i102.AdsRemoteDataSource>()));
  gh.lazySingleton<_i105.ApplyCoupon>(() => _i105.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.lazySingleton<_i106.DeleteCard>(() => _i106.DeleteCard(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i49.LoadBalanceRepositories>()));
  gh.factory<_i107.DeleteCardBloc>(
      () => _i107.DeleteCardBloc(deleteCard: get<_i106.DeleteCard>()));
  gh.factory<_i108.DeleteResumeData>(() => _i108.DeleteResumeData(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i109.GetAds>(() => _i109.GetAds(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i103.AdsRepository>()));
  gh.lazySingleton<_i110.GetCountries>(() => _i110.GetCountries(
      repository: get<_i52.LocationInformationRepositoryProtocol>()));
  gh.factory<_i111.GetDownloadablePdfLink>(() => _i111.GetDownloadablePdfLink(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i112.GetFavouriteNews>(() =>
      _i112.GetFavouriteNews(repository: get<_i57.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i113.GetHomePageData>(() => _i113.GetHomePageData(
      repository: get<_i45.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i114.GetIndivisualTransaction>(() =>
      _i114.GetIndivisualTransaction(
          repository: get<_i79.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i115.GetLatestNews>(() => _i115.GetLatestNews(
      repository: get<_i57.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i116.GetListOfCityFromPrefectures>(() =>
      _i116.GetListOfCityFromPrefectures(
          repository: get<_i52.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i117.GetListOfPaymentMethods>(() =>
      _i117.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i49.LoadBalanceRepositories>()));
  gh.lazySingleton<_i118.GetNewsForYou>(() => _i118.GetNewsForYou(
      repository: get<_i57.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i119.GetNewsGenre>(
      () => _i119.GetNewsGenre(repository: get<_i57.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i120.GetNewsPreferences>(() =>
      _i120.GetNewsPreferences(repository: get<_i57.NewsRepositoryProtocol>()));
  gh.factory<_i121.GetPaymentMethodsBloc>(() => _i121.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i117.GetListOfPaymentMethods>(),
      deletecard: get<_i106.DeleteCard>()));
  gh.lazySingleton<_i122.GetPrefectureCityFromPostalCode>(() =>
      _i122.GetPrefectureCityFromPostalCode(
          repository: get<_i52.LocationInformationRepositoryProtocol>()));
  gh.factory<_i123.GetResume>(() => _i123.GetResume(
      repository: get<_i68.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i124.GetSubscriptionDetailForPartnerService>(() =>
      _i124.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i90.UtilityPaymentRepository>()));
  gh.lazySingleton<_i125.GetTransactions>(() => _i125.GetTransactions(
      repository: get<_i79.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i126.HomePageDataBloc>(() =>
      _i126.HomePageDataBloc(getHomePageData: get<_i113.GetHomePageData>()));
  gh.factory<_i127.IndividualTransactionBloc>(() =>
      _i127.IndividualTransactionBloc(
          getIndividualTxn: get<_i114.GetIndivisualTransaction>()));
  gh.lazySingleton<_i128.JapaneseMannerRepository>(() =>
      _i129.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i47.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i130.LatestNewsBloc>(
      () => _i130.LatestNewsBloc(getNews: get<_i115.GetLatestNews>()));
  gh.factory<_i131.LocationViaPostalCodeBloc>(() =>
      _i131.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i122.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i132.NewsBloc>(
      () => _i132.NewsBloc(getNews: get<_i118.GetNewsForYou>()));
  gh.factory<_i133.NewsGenreBloc>(
      () => _i133.NewsGenreBloc(getNewsGenre: get<_i119.GetNewsGenre>()));
  gh.factory<_i134.NewsPreferenceBloc>(() => _i134.NewsPreferenceBloc(
      getNewsPreferences: get<_i120.GetNewsPreferences>()));
  gh.lazySingleton<_i135.NotificationRepository>(() =>
      _i136.NotificationRepositoryImpl(
          dataSource: get<_i59.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i137.ParnterServicesBloc>(() => _i137.ParnterServicesBloc(
      getPartnerServices: get<_i138.GetPartnerServices>()));
  gh.factory<_i139.PartnerServiceCategoriesBloc>(() =>
      _i139.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i140.GetPartnerServicesCategories>()));
  gh.factory<_i141.PasswordResetBloc>(() => _i141.PasswordResetBloc(
      resetPasswordUseCase: get<_i66.ResetPasswordUseCase>()));
  gh.lazySingleton<_i142.PurchaseSubscriptionFromPartnerService>(() =>
      _i142.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i90.UtilityPaymentRepository>()));
  gh.factory<_i143.RedeemCouponBloc>(() => _i143.RedeemCouponBloc(
      applyCoupon: get<_i105.ApplyCoupon>(),
      redeemCoupon: get<_i65.RedeemCoupon>()));
  gh.lazySingleton<_i144.ResumeWatcherBloc>(() => _i144.ResumeWatcherBloc(
      getResume: get<_i123.GetResume>(),
      deleteResumeData: get<_i108.DeleteResumeData>()));
  gh.factory<_i145.SignInFormBloc>(() => _i145.SignInFormBloc(
      signInWithEmailUsecase: get<_i71.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i70.SignInWithApple>(),
      signInWithFacebook: get<_i72.SignInWithFacebook>(),
      signInWithGoogle: get<_i73.SignInWithGoogle>()));
  gh.factory<_i146.SignUpFormBloc>(() => _i146.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i74.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i147.SubscriptionForPartnerServiceBloc>(() =>
      _i147.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i124.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i142.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i148.TopUpBalanceForMobile>(() =>
      _i148.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i90.UtilityPaymentRepository>()));
  gh.factory<_i149.TopUpBalanceInMobileBloc>(() =>
      _i149.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i148.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i150.TransactionBloc>(() =>
      _i150.TransactionBloc(getTransaction: get<_i125.GetTransactions>()));
  gh.factory<_i151.UpdateProfileBloc>(() => _i151.UpdateProfileBloc(
      updateKycInfo: get<_i83.UpdateKycInfo>(),
      updateResumeImage: get<_i87.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i116.GetListOfCityFromPrefectures>()));
  gh.factory<_i152.AdsBloc>(() =>
      _i152.AdsBloc(get<_i109.GetAds>(), get<_i102.AdsRemoteDataSource>()));
  gh.factory<_i153.DownloadPdfBloc>(() => _i153.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i111.GetDownloadablePdfLink>()));
  gh.factory<_i154.FavouriteNewsBloc>(() =>
      _i154.FavouriteNewsBloc(getFavouriteNews: get<_i112.GetFavouriteNews>()));
  gh.lazySingleton<_i155.GetNotifications>(() => _i155.GetNotifications(
      repository: get<_i135.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i156.JapaneseMannerBloc>(() => _i156.JapaneseMannerBloc(
      getJapaneseManner: get<_i157.GetJapaneseManner>()));
  gh.factory<_i158.JapaneseMannerCategoriesBloc>(() =>
      _i158.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i159.GetJapaneseMannerCategories>()));
  gh.factory<_i160.JapaneseMannerDetailBloc>(() =>
      _i160.JapaneseMannerDetailBloc(
          getJpMannerDetail: get<_i161.GetJapaneseMannerDetail>()));
  gh.factory<_i162.NotificationsBloc>(() =>
      _i162.NotificationsBloc(getNotifications: get<_i155.GetNotifications>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i163.DBProvider>(_i163.DBProviderImpl());
  gh.singleton<_i56.NewsLocalProvider>(
      _i56.NewsLocalProviderImpl(provider: get<_i163.DBProvider>()));
  gh.singleton<_i64.PurchasePackage>(_i64.PurchasePackage(
      repository: get<_i61.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i138.GetPartnerServices>(_i138.GetPartnerServices(
      repository: get<_i61.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i140.GetPartnerServicesCategories>(
      _i140.GetPartnerServicesCategories(
          repository: get<_i61.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i157.GetJapaneseManner>(_i157.GetJapaneseManner(
      repository: get<_i128.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i159.GetJapaneseMannerCategories>(
      _i159.GetJapaneseMannerCategories(
          repository: get<_i128.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i161.GetJapaneseMannerDetail>(_i161.GetJapaneseMannerDetail(
      repository: get<_i128.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i164.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i165.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i166.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i167.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i168.SharedPreferenceModule {}
