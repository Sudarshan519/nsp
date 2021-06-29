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

import '../core/database/local_database_provider.dart' as _i149;
import '../core/database/news_provider.dart' as _i54;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/geo_location/geo_location.dart' as _i7;
import '../core/logger/logger.dart' as _i12;
import '../core/network/newtork_info.dart' as _i14;
import '../core/notification/push_notification_manager.dart' as _i16;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i18;
import '../features/alerts/data/repository/alert_repository.dart' as _i20;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i19;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i31;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i37;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i39;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i32;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i38;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i40;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i21;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i22;
import '../features/auth/data/repository/auth_repository.dart' as _i24;
import '../features/auth/domain/repositories/auth_repository.dart' as _i23;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i41;
import '../features/auth/domain/usecase/logout_user.dart' as _i52;
import '../features/auth/domain/usecase/reset_password.dart' as _i64;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i68;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i69;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i70;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i71;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i72;
import '../features/auth/domain/usecase/verify_email.dart' as _i92;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i130;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i134;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i135;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i93;
import '../features/coupon/data/datasource/coupon_remote_datasource.dart'
    as _i28;
import '../features/coupon/data/repositories/coupon_repository.dart' as _i30;
import '../features/coupon/domain/repositories/coupon_repository.dart' as _i29;
import '../features/coupon/domain/usecases/apply_coupon.dart' as _i99;
import '../features/coupon/domain/usecases/get_coupon_list.dart' as _i35;
import '../features/coupon/domain/usecases/redeem_coupon.dart' as _i63;
import '../features/coupon/domain/usecases/verify_coupon.dart' as _i90;
import '../features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart'
    as _i36;
import '../features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart'
    as _i132;
import '../features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart'
    as _i91;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i42;
import '../features/home/data/repositories/home_repository.dart' as _i44;
import '../features/home/domain/repositories/home_repository.dart' as _i43;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i103;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i116;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i45;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i118;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i117;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i145;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i147;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i144;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i146;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i46;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i48;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i47;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i107;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i74;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i94;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i96;
import '../features/load_balance/domain/usecases/verify_khalti_top_up.dart'
    as _i97;
import '../features/load_balance/presentations/esewa/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/esewa/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i95;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i111;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i9;
import '../features/load_balance/presentations/khalti/khalti_form/khalti_form_cubit.dart'
    as _i11;
import '../features/load_balance/presentations/khalti/verify_khalti_topup/verify_khalti_topup_bloc.dart'
    as _i98;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i75;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i49;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i51;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i50;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i100;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i106;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i112;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i120;
import '../features/news/data/datasource/news_local_data_source.dart' as _i53;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i56;
import '../features/news/domain/repository/news_repository.dart' as _i55;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i102;
import '../features/news/domain/usecase/get_latest_news.dart' as _i105;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i108;
import '../features/news/domain/usecase/get_news_genre.dart' as _i109;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i110;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i142;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i119;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i121;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i122;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i123;
import '../features/notifications/data/datasource/notification_remote_data_source.dart'
    as _i57;
import '../features/notifications/data/repository/notification_repository.dart'
    as _i125;
import '../features/notifications/domain/repository/notification_repository.dart'
    as _i124;
import '../features/notifications/domain/usecase/get_notifications.dart'
    as _i143;
import '../features/notifications/presentation/notification/notifications_bloc.dart'
    as _i148;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i58;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i60;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i59;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i127;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i129;
import '../features/partner_services/domain/usecase/purchase_package.dart'
    as _i62;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i126;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i128;
import '../features/partner_services/presentation/purchase_package/purchase_package_bloc.dart'
    as _i61;
import '../features/profile/balance/data/datasource/balance_remote_data_source.dart'
    as _i25;
import '../features/profile/balance/data/repository/balance_repository.dart'
    as _i27;
import '../features/profile/balance/domain/repository/balance_repository.dart'
    as _i26;
import '../features/profile/balance/domain/usecase/get_balance.dart' as _i33;
import '../features/profile/balance/presentation/get_balance_bloc.dart' as _i34;
import '../features/profile/update_profile/presentations/bloc/update_profile_bloc.dart'
    as _i140;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i65;
import '../features/resume/data/repository/resume_repository.dart' as _i67;
import '../features/resume/domain/repository/resume_repository.dart' as _i66;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i101;
import '../features/resume/domain/usecases/get_resume.dart' as _i113;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i79;
import '../features/resume/domain/usecases/update_address_info.dart' as _i80;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i81;
import '../features/resume/domain/usecases/update_other_info.dart' as _i82;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i83;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i84;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i85;
import '../features/resume/domain/usecases/update_work_info.dart' as _i86;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i141;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i133;
import '../features/splash/presentation/splash_bloc.dart' as _i73;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i76;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i78;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i77;
import '../features/transaction/domain/usecase/get_individual_transaction.dart'
    as _i104;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i115;
import '../features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart'
    as _i150;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i139;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i87;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i89;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i88;
import '../features/utility_payments/domain/usecases/get_subscription_detail_for_partner_service.dart'
    as _i114;
import '../features/utility_payments/domain/usecases/purchase_subscription_from_partner_service.dart'
    as _i131;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i137;
import '../features/utility_payments/presentation/subscription_for_partner_service/subscription_for_partner_service_bloc.dart'
    as _i136;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i138;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i154;
import 'injectable/flutter_secure_storage_module.dart' as _i152;
import 'injectable/google_login_injectable_module.dart' as _i153;
import 'injectable/http_client_injectable_module.dart' as _i151;
import 'injectable/shared_preference_module.dart'
    as _i155; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i42.HomePageRemoteDataSource>(() =>
      _i42.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i43.HomeReporisitory>(() => _i44.HomeRepositoryImpl(
      remoteDataSource: get<_i42.HomePageRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i45.JapaneseMannersRemoteDataSource>(() =>
      _i45.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i46.LoadBalanceDataSource>(() =>
      _i46.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i47.LoadBalanceRepositories>(() =>
      _i48.LoadBalanceRepositoriesImpl(
          dataSource: get<_i46.LoadBalanceDataSource>()));
  gh.lazySingleton<_i49.LocationInformationLocalDataSourceProtocol>(() =>
      _i49.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i50.LocationInformationRepositoryProtocol>(() =>
      _i51.LocationInformationRepository(
          dataSource: get<_i49.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i52.LogoutUser>(
      () => _i52.LogoutUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i53.NewsLocalDataSourceProtocol>(() =>
      _i53.NewsLocalDataSource(
          localProvider: get<_i54.NewsLocalProvider>(),
          preferences: get<_i17.SharedPreferences>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i55.NewsRepositoryProtocol>(() => _i56.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i53.NewsLocalDataSourceProtocol>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i57.NotificationsRemoteDataSource>(() =>
      _i57.NotificationsRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i58.PartnerServicesRemoteDataSource>(() =>
      _i58.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          auth: get<_i21.AuthLocalDataSource>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i59.PartnerServicesRepository>(() =>
      _i60.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i58.PartnerServicesRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i61.PurchasePackageBloc>(() =>
      _i61.PurchasePackageBloc(purchasePackage: get<_i62.PurchasePackage>()));
  gh.lazySingleton<_i63.RedeemCoupon>(() => _i63.RedeemCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.lazySingleton<_i64.ResetPasswordUseCase>(() => _i64.ResetPasswordUseCase(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i65.ResumeRemoteDataSource>(() =>
      _i65.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i66.ResumeRepository>(() => _i67.ResumeRepositoryImpl(
      dataSource: get<_i65.ResumeRemoteDataSource>(),
      logger: get<_i12.Logger>()));
  gh.lazySingleton<_i68.SignInWithApple>(() => _i68.SignInWithApple(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i69.SignInWithEmailAndPassword>(() =>
      _i69.SignInWithEmailAndPassword(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i70.SignInWithFacebook>(() => _i70.SignInWithFacebook(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i71.SignInWithGoogle>(() => _i71.SignInWithGoogle(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i72.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i72.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i73.SplashBloc>(
      () => _i73.SplashBloc(getWalletUser: get<_i41.GetWalletUser>()));
  gh.lazySingleton<_i74.TopUpViaStripe>(() => _i74.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i47.LoadBalanceRepositories>()));
  gh.factory<_i75.TopupViaStripeBloc>(() =>
      _i75.TopupViaStripeBloc(topUpViaStripe: get<_i74.TopUpViaStripe>()));
  gh.lazySingleton<_i76.TransactionRemoteDataSource>(() =>
      _i76.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i77.TransactionRepository>(() =>
      _i78.TransactionRepositoryImpl(
          dataSource: get<_i76.TransactionRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i79.UpdateAcadamicInfo>(() => _i79.UpdateAcadamicInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i80.UpdateAddressInfo>(() => _i80.UpdateAddressInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i81.UpdateKycInfo>(() => _i81.UpdateKycInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i82.UpdateOtherInfo>(() => _i82.UpdateOtherInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i83.UpdatePersonalInfo>(() => _i83.UpdatePersonalInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i84.UpdateQualificationInfo>(() => _i84.UpdateQualificationInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i85.UpdateResumeImage>(() => _i85.UpdateResumeImage(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i86.UpdateWorkInfo>(() => _i86.UpdateWorkInfo(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i87.UtilityPaymentDataSource>(() =>
      _i87.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i88.UtilityPaymentRepository>(() =>
      _i89.UtilityPaymentRepositoryImpl(
          dataSource: get<_i87.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i90.VerifyCoupon>(() => _i90.VerifyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.factory<_i91.VerifyCouponBloc>(
      () => _i91.VerifyCouponBloc(verifyCoupon: get<_i90.VerifyCoupon>()));
  gh.lazySingleton<_i92.VerifyEmail>(() => _i92.VerifyEmail(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i93.VerifyEmailBloc>(
      () => _i93.VerifyEmailBloc(verifyEmail: get<_i92.VerifyEmail>()));
  gh.lazySingleton<_i94.VerifyEsewaTopup>(() => _i94.VerifyEsewaTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i47.LoadBalanceRepositories>()));
  gh.factory<_i95.VerifyEsewaTopupBloc>(() => _i95.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i94.VerifyEsewaTopup>()));
  gh.lazySingleton<_i96.VerifyImePayTopup>(() => _i96.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i47.LoadBalanceRepositories>()));
  gh.lazySingleton<_i97.VerifyKhaltiTopup>(() => _i97.VerifyKhaltiTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i47.LoadBalanceRepositories>()));
  gh.factory<_i98.VerifyKhaltiTopupBloc>(() => _i98.VerifyKhaltiTopupBloc(
      verifyKhaltiTopup: get<_i97.VerifyKhaltiTopup>()));
  gh.lazySingleton<_i99.ApplyCoupon>(() => _i99.ApplyCoupon(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i29.CouponRepository>()));
  gh.lazySingleton<_i100.GetCountries>(() => _i100.GetCountries(
      repository: get<_i50.LocationInformationRepositoryProtocol>()));
  gh.factory<_i101.GetDownloadablePdfLink>(() => _i101.GetDownloadablePdfLink(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i102.GetFavouriteNews>(() =>
      _i102.GetFavouriteNews(repository: get<_i55.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i103.GetHomePageData>(() => _i103.GetHomePageData(
      repository: get<_i43.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i104.GetIndivisualTransaction>(() =>
      _i104.GetIndivisualTransaction(
          repository: get<_i77.TransactionRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i105.GetLatestNews>(() => _i105.GetLatestNews(
      repository: get<_i55.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i106.GetListOfCityFromPrefectures>(() =>
      _i106.GetListOfCityFromPrefectures(
          repository: get<_i50.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i107.GetListOfPaymentMethods>(() =>
      _i107.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i47.LoadBalanceRepositories>()));
  gh.lazySingleton<_i108.GetNewsForYou>(() => _i108.GetNewsForYou(
      repository: get<_i55.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i109.GetNewsGenre>(
      () => _i109.GetNewsGenre(repository: get<_i55.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i110.GetNewsPreferences>(() =>
      _i110.GetNewsPreferences(repository: get<_i55.NewsRepositoryProtocol>()));
  gh.factory<_i111.GetPaymentMethodsBloc>(() => _i111.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i107.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i112.GetPrefectureCityFromPostalCode>(() =>
      _i112.GetPrefectureCityFromPostalCode(
          repository: get<_i50.LocationInformationRepositoryProtocol>()));
  gh.factory<_i113.GetResume>(() => _i113.GetResume(
      repository: get<_i66.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i114.GetSubscriptionDetailForPartnerService>(() =>
      _i114.GetSubscriptionDetailForPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i88.UtilityPaymentRepository>()));
  gh.lazySingleton<_i115.GetTransactions>(() => _i115.GetTransactions(
      repository: get<_i77.TransactionRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i116.HomePageDataBloc>(() =>
      _i116.HomePageDataBloc(getHomePageData: get<_i103.GetHomePageData>()));
  gh.lazySingleton<_i117.JapaneseMannerRepository>(() =>
      _i118.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i45.JapaneseMannersRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.lazySingleton<_i119.LatestNewsBloc>(
      () => _i119.LatestNewsBloc(getNews: get<_i105.GetLatestNews>()));
  gh.factory<_i120.LocationViaPostalCodeBloc>(() =>
      _i120.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i112.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i121.NewsBloc>(
      () => _i121.NewsBloc(getNews: get<_i108.GetNewsForYou>()));
  gh.factory<_i122.NewsGenreBloc>(
      () => _i122.NewsGenreBloc(getNewsGenre: get<_i109.GetNewsGenre>()));
  gh.factory<_i123.NewsPreferenceBloc>(() => _i123.NewsPreferenceBloc(
      getNewsPreferences: get<_i110.GetNewsPreferences>()));
  gh.lazySingleton<_i124.NotificationRepository>(() =>
      _i125.NotificationRepositoryImpl(
          dataSource: get<_i57.NotificationsRemoteDataSource>(),
          logger: get<_i12.Logger>()));
  gh.factory<_i126.ParnterServicesBloc>(() => _i126.ParnterServicesBloc(
      getPartnerServices: get<_i127.GetPartnerServices>()));
  gh.factory<_i128.PartnerServiceCategoriesBloc>(() =>
      _i128.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i129.GetPartnerServicesCategories>()));
  gh.factory<_i130.PasswordResetBloc>(() => _i130.PasswordResetBloc(
      resetPasswordUseCase: get<_i64.ResetPasswordUseCase>()));
  gh.lazySingleton<_i131.PurchaseSubscriptionFromPartnerService>(() =>
      _i131.PurchaseSubscriptionFromPartnerService(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i88.UtilityPaymentRepository>()));
  gh.factory<_i132.RedeemCouponBloc>(() => _i132.RedeemCouponBloc(
      applyCoupon: get<_i99.ApplyCoupon>(),
      redeemCoupon: get<_i63.RedeemCoupon>()));
  gh.lazySingleton<_i133.ResumeWatcherBloc>(
      () => _i133.ResumeWatcherBloc(getResume: get<_i113.GetResume>()));
  gh.factory<_i134.SignInFormBloc>(() => _i134.SignInFormBloc(
      signInWithEmailUsecase: get<_i69.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i68.SignInWithApple>(),
      signInWithFacebook: get<_i70.SignInWithFacebook>(),
      signInWithGoogle: get<_i71.SignInWithGoogle>()));
  gh.factory<_i135.SignUpFormBloc>(() => _i135.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i72.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i136.SubscriptionForPartnerServiceBloc>(() =>
      _i136.SubscriptionForPartnerServiceBloc(
          getSubscriptionDetailForPartnerService:
              get<_i114.GetSubscriptionDetailForPartnerService>(),
          purchaseSubscriptionFromPartnerService:
              get<_i131.PurchaseSubscriptionFromPartnerService>()));
  gh.lazySingleton<_i137.TopUpBalanceForMobile>(() =>
      _i137.TopUpBalanceForMobile(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i88.UtilityPaymentRepository>()));
  gh.factory<_i138.TopUpBalanceInMobileBloc>(() =>
      _i138.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i137.TopUpBalanceForMobile>()));
  gh.lazySingleton<_i139.TransactionBloc>(() =>
      _i139.TransactionBloc(getTransaction: get<_i115.GetTransactions>()));
  gh.factory<_i140.UpdateProfileBloc>(() => _i140.UpdateProfileBloc(
      updateKycInfo: get<_i81.UpdateKycInfo>(),
      updateResumeImage: get<_i85.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i106.GetListOfCityFromPrefectures>()));
  gh.factory<_i141.DownloadPdfBloc>(() => _i141.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i101.GetDownloadablePdfLink>()));
  gh.factory<_i142.FavouriteNewsBloc>(() =>
      _i142.FavouriteNewsBloc(getFavouriteNews: get<_i102.GetFavouriteNews>()));
  gh.lazySingleton<_i143.GetNotifications>(() => _i143.GetNotifications(
      repository: get<_i124.NotificationRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i144.JapaneseMannerBloc>(() => _i144.JapaneseMannerBloc(
      getJapaneseManner: get<_i145.GetJapaneseManner>()));
  gh.factory<_i146.JapaneseMannerCategoriesBloc>(() =>
      _i146.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i147.GetJapaneseMannerCategories>()));
  gh.factory<_i148.NotificationsBloc>(() =>
      _i148.NotificationsBloc(getNotifications: get<_i143.GetNotifications>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i149.DBProvider>(_i149.DBProviderImpl());
  gh.singleton<_i54.NewsLocalProvider>(
      _i54.NewsLocalProviderImpl(provider: get<_i149.DBProvider>()));
  gh.singleton<_i62.PurchasePackage>(_i62.PurchasePackage(
      repository: get<_i59.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i127.GetPartnerServices>(_i127.GetPartnerServices(
      repository: get<_i59.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i129.GetPartnerServicesCategories>(
      _i129.GetPartnerServicesCategories(
          repository: get<_i59.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i150.IndividualTransactionBloc>(_i150.IndividualTransactionBloc(
      getIndividualTxn: get<_i104.GetIndivisualTransaction>()));
  gh.singleton<_i145.GetJapaneseManner>(_i145.GetJapaneseManner(
      repository: get<_i117.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i147.GetJapaneseMannerCategories>(
      _i147.GetJapaneseMannerCategories(
          repository: get<_i117.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i151.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i152.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i153.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i154.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i155.SharedPreferenceModule {}
