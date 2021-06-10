// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../core/database/local_database_provider.dart' as _i118;
import '../core/database/news_provider.dart' as _i44;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/logger/logger.dart' as _i10;
import '../core/network/newtork_info.dart' as _i12;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i18;
import '../features/alerts/data/repository/alert_repository.dart' as _i20;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i19;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i25;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i27;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i29;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i26;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i28;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i30;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i21;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i22;
import '../features/auth/data/repository/auth_repository.dart' as _i24;
import '../features/auth/domain/repositories/auth_repository.dart' as _i23;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i31;
import '../features/auth/domain/usecase/logout_user.dart' as _i42;
import '../features/auth/domain/usecase/reset_password.dart' as _i51;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i57;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i58;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i59;
import '../features/auth/domain/usecase/verify_email.dart' as _i77;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i104;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i106;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i107;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i78;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i32;
import '../features/home/data/repositories/home_repository.dart' as _i34;
import '../features/home/domain/repositories/home_repository.dart' as _i33;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i85;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i96;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i35;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i98;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i97;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i115;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i117;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i114;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i116;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i36;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i38;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i37;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i88;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i61;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i79;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i81;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i92;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i8;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i62;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i80;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i39;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i41;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i40;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i82;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i87;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i93;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i100;
import '../features/news/data/datasource/news_local_data_source.dart' as _i43;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i13;
import '../features/news/data/repository/news_repository.dart' as _i46;
import '../features/news/domain/repository/news_repository.dart' as _i45;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i84;
import '../features/news/domain/usecase/get_latest_news.dart' as _i86;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i89;
import '../features/news/domain/usecase/get_news_genre.dart' as _i90;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i91;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i113;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i99;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i101;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i102;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i103;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i14;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i16;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i15;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i48;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i50;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i47;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i49;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i111;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i52;
import '../features/resume/data/repository/resume_repository.dart' as _i54;
import '../features/resume/domain/repository/resume_repository.dart' as _i53;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i83;
import '../features/resume/domain/usecases/get_resume.dart' as _i94;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i66;
import '../features/resume/domain/usecases/update_address_info.dart' as _i67;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i68;
import '../features/resume/domain/usecases/update_other_info.dart' as _i69;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i70;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i71;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i72;
import '../features/resume/domain/usecases/update_work_info.dart' as _i73;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i112;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i105;
import '../features/splash/presentation/splash_bloc.dart' as _i60;
import '../features/transaction/data/datasource/transaction_remote_data_source.dart'
    as _i63;
import '../features/transaction/data/repository/transaction_repository.dart'
    as _i65;
import '../features/transaction/domain/repository/transaction_repository.dart'
    as _i64;
import '../features/transaction/domain/usecase/get_transaction.dart' as _i95;
import '../features/transaction/presentation/transaction/transaction_bloc.dart'
    as _i110;
import '../features/utility_payments/data/datasource/utility_payment_datasource.dart'
    as _i74;
import '../features/utility_payments/data/repository/utility_payment_repository.dart'
    as _i76;
import '../features/utility_payments/domain/repositories/utility_payment_repository.dart'
    as _i75;
import '../features/utility_payments/domain/usecases/topup_balance_for_mobile.dart'
    as _i108;
import '../features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart'
    as _i109;
import '../utils/config_reader.dart' as _i11;
import 'injectable/data_connection_checker_injectable_module.dart' as _i122;
import 'injectable/flutter_secure_storage_module.dart' as _i120;
import 'injectable/google_login_injectable_module.dart' as _i121;
import 'injectable/http_client_injectable_module.dart' as _i119;
import 'injectable/shared_preference_module.dart'
    as _i123; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i8.ImePayFormCubit>(() => _i8.ImePayFormCubit());
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i10.Logger>(() => _i10.LoggerImpl(
      client: get<_i3.Client>(), config: get<_i11.ConfigReader>()));
  gh.lazySingleton<_i12.NetworkInfo>(() => _i12.NetworkInfoImpl(
      dataConnectionChecker: get<_i9.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.NewsRemoteDataSourceProtocol>(() =>
      _i13.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i14.PartnerServicesRemoteDataSource>(() =>
      _i14.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i15.PartnerServicesRepository>(() =>
      _i16.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i14.PartnerServicesRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i18.AlertRemoteDataSource>(() =>
      _i18.AlertRemoteDataSourceImpl(
          logger: get<_i10.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>()));
  gh.lazySingleton<_i19.AlertRepository>(() => _i20.AlertRepositoryImpl(
      dataSource: get<_i18.AlertRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i21.AuthLocalDataSource>(() => _i21.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i17.SharedPreferences>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i22.AuthRemoteDataSource>(() =>
      _i22.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i23.AuthRepository>(() => _i24.AuthRepositoryImpl(
      remoteDataSource: get<_i22.AuthRemoteDataSource>(),
      localDataSource: get<_i21.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i25.GetAlerts>(() => _i25.GetAlerts(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i26.GetAlertsBloc>(
      () => _i26.GetAlertsBloc(getAlerts: get<_i25.GetAlerts>()));
  gh.lazySingleton<_i27.GetEarthquakes>(() => _i27.GetEarthquakes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i28.GetEarthquakesBloc>(() =>
      _i28.GetEarthquakesBloc(getEarthquakes: get<_i27.GetEarthquakes>()));
  gh.lazySingleton<_i29.GetVolcanoes>(() => _i29.GetVolcanoes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i30.GetVolcanoesBloc>(
      () => _i30.GetVolcanoesBloc(getVolcanoes: get<_i29.GetVolcanoes>()));
  gh.lazySingleton<_i31.GetWalletUser>(
      () => _i31.GetWalletUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i32.HomePageRemoteDataSource>(() =>
      _i32.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i33.HomeReporisitory>(() => _i34.HomeRepositoryImpl(
      remoteDataSource: get<_i32.HomePageRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i35.JapaneseMannersRemoteDataSource>(() =>
      _i35.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i36.LoadBalanceDataSource>(() =>
      _i36.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i37.LoadBalanceRepositories>(() =>
      _i38.LoadBalanceRepositoriesImpl(
          dataSource: get<_i36.LoadBalanceDataSource>()));
  gh.lazySingleton<_i39.LocationInformationLocalDataSourceProtocol>(() =>
      _i39.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i40.LocationInformationRepositoryProtocol>(() =>
      _i41.LocationInformationRepository(
          dataSource: get<_i39.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i42.LogoutUser>(
      () => _i42.LogoutUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i43.NewsLocalDataSourceProtocol>(() =>
      _i43.NewsLocalDataSource(
          localProvider: get<_i44.NewsLocalProvider>(),
          preferences: get<_i17.SharedPreferences>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i45.NewsRepositoryProtocol>(() => _i46.NewsRepository(
      remoteDataSource: get<_i13.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i43.NewsLocalDataSourceProtocol>(),
      logger: get<_i10.Logger>()));
  gh.factory<_i47.ParnterServicesBloc>(() => _i47.ParnterServicesBloc(
      getPartnerServices: get<_i48.GetPartnerServices>()));
  gh.factory<_i49.PartnerServiceCategoriesBloc>(() =>
      _i49.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i50.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i51.ResetPasswordUseCase>(() => _i51.ResetPasswordUseCase(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i52.ResumeRemoteDataSource>(() =>
      _i52.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i53.ResumeRepository>(() => _i54.ResumeRepositoryImpl(
      dataSource: get<_i52.ResumeRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i55.SignInWithApple>(() => _i55.SignInWithApple(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithEmailAndPassword>(() =>
      _i56.SignInWithEmailAndPassword(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithFacebook>(() => _i57.SignInWithFacebook(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i58.SignInWithGoogle>(() => _i58.SignInWithGoogle(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i59.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i59.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i60.SplashBloc>(
      () => _i60.SplashBloc(getWalletUser: get<_i31.GetWalletUser>()));
  gh.lazySingleton<_i61.TopUpViaStripe>(() => _i61.TopUpViaStripe(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.factory<_i62.TopupViaStripeBloc>(() =>
      _i62.TopupViaStripeBloc(topUpViaStripe: get<_i61.TopUpViaStripe>()));
  gh.lazySingleton<_i63.TransactionRemoteDataSource>(() =>
      _i63.TransactionRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i64.TransactionRepository>(() =>
      _i65.TransactionRepositoryImpl(
          dataSource: get<_i63.TransactionRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  gh.factory<_i66.UpdateAcadamicInfo>(() => _i66.UpdateAcadamicInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i67.UpdateAddressInfo>(() => _i67.UpdateAddressInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i68.UpdateKycInfo>(() => _i68.UpdateKycInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i69.UpdateOtherInfo>(() => _i69.UpdateOtherInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i70.UpdatePersonalInfo>(() => _i70.UpdatePersonalInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i71.UpdateQualificationInfo>(() => _i71.UpdateQualificationInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i72.UpdateResumeImage>(() => _i72.UpdateResumeImage(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i73.UpdateWorkInfo>(() => _i73.UpdateWorkInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i74.UtilityPaymentDataSource>(() =>
      _i74.UtilityPaymentDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i11.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i75.UtilityPaymentRepository>(() =>
      _i76.UtilityPaymentRepositoryImpl(
          dataSource: get<_i74.UtilityPaymentDataSource>()));
  gh.lazySingleton<_i77.VerifyEmail>(() => _i77.VerifyEmail(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.factory<_i78.VerifyEmailBloc>(
      () => _i78.VerifyEmailBloc(verifyEmail: get<_i77.VerifyEmail>()));
  gh.lazySingleton<_i79.VerifyEsewaTopup>(() => _i79.VerifyEsewaTopup(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.factory<_i80.VerifyEsewaTopupBloc>(() => _i80.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i79.VerifyEsewaTopup>()));
  gh.lazySingleton<_i81.VerifyImePayTopup>(() => _i81.VerifyImePayTopup(
      networkInfo: get<_i12.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.lazySingleton<_i82.GetCountries>(() => _i82.GetCountries(
      repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.factory<_i83.GetDownloadablePdfLink>(() => _i83.GetDownloadablePdfLink(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i84.GetFavouriteNews>(() =>
      _i84.GetFavouriteNews(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i85.GetHomePageData>(() => _i85.GetHomePageData(
      repository: get<_i33.HomeReporisitory>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i86.GetLatestNews>(() => _i86.GetLatestNews(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i87.GetListOfCityFromPrefectures>(() =>
      _i87.GetListOfCityFromPrefectures(
          repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i88.GetListOfPaymentMethods>(() =>
      _i88.GetListOfPaymentMethods(
          networkInfo: get<_i12.NetworkInfo>(),
          repository: get<_i37.LoadBalanceRepositories>()));
  gh.lazySingleton<_i89.GetNewsForYou>(() => _i89.GetNewsForYou(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i90.GetNewsGenre>(
      () => _i90.GetNewsGenre(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i91.GetNewsPreferences>(() =>
      _i91.GetNewsPreferences(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.factory<_i92.GetPaymentMethodsBloc>(() => _i92.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i88.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i93.GetPrefectureCityFromPostalCode>(() =>
      _i93.GetPrefectureCityFromPostalCode(
          repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.factory<_i94.GetResume>(() => _i94.GetResume(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i95.GetTransactions>(() => _i95.GetTransactions(
      repository: get<_i64.TransactionRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.lazySingleton<_i96.HomePageDataBloc>(() =>
      _i96.HomePageDataBloc(getHomePageData: get<_i85.GetHomePageData>()));
  gh.lazySingleton<_i97.JapaneseMannerRepository>(() =>
      _i98.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i35.JapaneseMannersRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i99.LatestNewsBloc>(
      () => _i99.LatestNewsBloc(getNews: get<_i86.GetLatestNews>()));
  gh.factory<_i100.LocationViaPostalCodeBloc>(() =>
      _i100.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i93.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i101.NewsBloc>(
      () => _i101.NewsBloc(getNews: get<_i89.GetNewsForYou>()));
  gh.factory<_i102.NewsGenreBloc>(
      () => _i102.NewsGenreBloc(getNewsGenre: get<_i90.GetNewsGenre>()));
  gh.factory<_i103.NewsPreferenceBloc>(() => _i103.NewsPreferenceBloc(
      getNewsPreferences: get<_i91.GetNewsPreferences>()));
  gh.factory<_i104.PasswordResetBloc>(() => _i104.PasswordResetBloc(
      resetPasswordUseCase: get<_i51.ResetPasswordUseCase>()));
  gh.lazySingleton<_i105.ResumeWatcherBloc>(
      () => _i105.ResumeWatcherBloc(getResume: get<_i94.GetResume>()));
  gh.factory<_i106.SignInFormBloc>(() => _i106.SignInFormBloc(
      signInWithEmailUsecase: get<_i56.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i55.SignInWithApple>(),
      signInWithFacebook: get<_i57.SignInWithFacebook>(),
      signInWithGoogle: get<_i58.SignInWithGoogle>()));
  gh.factory<_i107.SignUpFormBloc>(() => _i107.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i59.SignUpWithEmailPasswordAndUserDetail>()));
  gh.lazySingleton<_i108.TopUpBalanceForMobile>(() =>
      _i108.TopUpBalanceForMobile(
          networkInfo: get<_i12.NetworkInfo>(),
          repository: get<_i75.UtilityPaymentRepository>()));
  gh.factory<_i109.TopUpBalanceInMobileBloc>(() =>
      _i109.TopUpBalanceInMobileBloc(
          topUpBalanceForMobile: get<_i108.TopUpBalanceForMobile>()));
  gh.factory<_i110.TransactionBloc>(
      () => _i110.TransactionBloc(getTransaction: get<_i95.GetTransactions>()));
  gh.factory<_i111.UpdateProfileBloc>(() => _i111.UpdateProfileBloc(
      updateKycInfo: get<_i68.UpdateKycInfo>(),
      updateResumeImage: get<_i72.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i87.GetListOfCityFromPrefectures>()));
  gh.factory<_i112.DownloadPdfBloc>(() => _i112.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i83.GetDownloadablePdfLink>()));
  gh.factory<_i113.FavouriteNewsBloc>(() =>
      _i113.FavouriteNewsBloc(getFavouriteNews: get<_i84.GetFavouriteNews>()));
  gh.factory<_i114.JapaneseMannerBloc>(() => _i114.JapaneseMannerBloc(
      getJapaneseManner: get<_i115.GetJapaneseManner>()));
  gh.factory<_i116.JapaneseMannerCategoriesBloc>(() =>
      _i116.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i117.GetJapaneseMannerCategories>()));
  gh.singleton<_i11.ConfigReader>(_i11.ConfigReaderImpl());
  gh.singleton<_i118.DBProvider>(_i118.DBProviderImpl());
  gh.singleton<_i44.NewsLocalProvider>(
      _i44.NewsLocalProviderImpl(provider: get<_i118.DBProvider>()));
  gh.singleton<_i48.GetPartnerServices>(_i48.GetPartnerServices(
      repository: get<_i15.PartnerServicesRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i50.GetPartnerServicesCategories>(
      _i50.GetPartnerServicesCategories(
          repository: get<_i15.PartnerServicesRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i115.GetJapaneseManner>(_i115.GetJapaneseManner(
      repository: get<_i97.JapaneseMannerRepository>(),
      networkInfo: get<_i12.NetworkInfo>()));
  gh.singleton<_i117.GetJapaneseMannerCategories>(
      _i117.GetJapaneseMannerCategories(
          repository: get<_i97.JapaneseMannerRepository>(),
          networkInfo: get<_i12.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i119.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i120.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i121.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i122.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i123.SharedPreferenceModule {}
