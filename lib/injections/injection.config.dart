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

import '../core/database/local_database_provider.dart' as _i108;
import '../core/database/news_provider.dart' as _i44;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/logger/logger.dart' as _i10;
import '../core/network/newtork_info.dart' as _i11;
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
import '../features/auth/domain/usecase/verify_email.dart' as _i71;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i97;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i99;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i100;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i72;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i32;
import '../features/home/data/repositories/home_repository.dart' as _i34;
import '../features/home/domain/repositories/home_repository.dart' as _i33;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i79;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i89;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i35;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i91;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i90;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i105;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i107;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i104;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i106;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i36;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i38;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i37;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i82;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i61;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i73;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i75;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i86;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i8;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i62;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i74;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i39;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i41;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i40;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i76;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i81;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i87;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i93;
import '../features/news/data/datasource/news_local_data_source.dart' as _i43;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i12;
import '../features/news/data/repository/news_repository.dart' as _i46;
import '../features/news/domain/repository/news_repository.dart' as _i45;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i78;
import '../features/news/domain/usecase/get_latest_news.dart' as _i80;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i83;
import '../features/news/domain/usecase/get_news_genre.dart' as _i84;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i85;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i103;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i92;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i94;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i95;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i96;
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
    as _i101;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i52;
import '../features/resume/data/repository/resume_repository.dart' as _i54;
import '../features/resume/domain/repository/resume_repository.dart' as _i53;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i77;
import '../features/resume/domain/usecases/get_resume.dart' as _i88;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i63;
import '../features/resume/domain/usecases/update_address_info.dart' as _i64;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i65;
import '../features/resume/domain/usecases/update_other_info.dart' as _i66;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i67;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i68;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i69;
import '../features/resume/domain/usecases/update_work_info.dart' as _i70;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i102;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i98;
import '../features/splash/presentation/splash_bloc.dart' as _i60;
import '../utils/config_reader.dart' as _i13;
import 'injectable/data_connection_checker_injectable_module.dart' as _i112;
import 'injectable/flutter_secure_storage_module.dart' as _i110;
import 'injectable/google_login_injectable_module.dart' as _i111;
import 'injectable/http_client_injectable_module.dart' as _i109;
import 'injectable/shared_preference_module.dart'
    as _i113; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.Logger>(
      () => _i10.LoggerImpl(client: get<_i3.Client>()));
  gh.lazySingleton<_i11.NetworkInfo>(() => _i11.NetworkInfoImpl(
      dataConnectionChecker: get<_i9.InternetConnectionChecker>()));
  gh.lazySingleton<_i12.NewsRemoteDataSourceProtocol>(() =>
      _i12.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i14.PartnerServicesRemoteDataSource>(() =>
      _i14.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
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
          config: get<_i13.ConfigReader>()));
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
          config: get<_i13.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i23.AuthRepository>(() => _i24.AuthRepositoryImpl(
      remoteDataSource: get<_i22.AuthRemoteDataSource>(),
      localDataSource: get<_i21.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i25.GetAlerts>(() => _i25.GetAlerts(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i26.GetAlertsBloc>(
      () => _i26.GetAlertsBloc(getAlerts: get<_i25.GetAlerts>()));
  gh.lazySingleton<_i27.GetEarthquakes>(() => _i27.GetEarthquakes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i28.GetEarthquakesBloc>(() =>
      _i28.GetEarthquakesBloc(getEarthquakes: get<_i27.GetEarthquakes>()));
  gh.lazySingleton<_i29.GetVolcanoes>(() => _i29.GetVolcanoes(
      repository: get<_i19.AlertRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i30.GetVolcanoesBloc>(
      () => _i30.GetVolcanoesBloc(getVolcanoes: get<_i29.GetVolcanoes>()));
  gh.lazySingleton<_i31.GetWalletUser>(
      () => _i31.GetWalletUser(repository: get<_i23.AuthRepository>()));
  gh.lazySingleton<_i32.HomePageRemoteDataSource>(() =>
      _i32.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i33.HomeReporisitory>(() => _i34.HomeRepositoryImpl(
      remoteDataSource: get<_i32.HomePageRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i35.JapaneseMannersRemoteDataSource>(() =>
      _i35.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i36.LoadBalanceDataSource>(() =>
      _i36.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i37.LoadBalanceRepositories>(() =>
      _i38.LoadBalanceRepositoriesImpl(
          dataSource: get<_i36.LoadBalanceDataSource>()));
  gh.lazySingleton<_i39.LocationInformationLocalDataSourceProtocol>(() =>
      _i39.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
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
      remoteDataSource: get<_i12.NewsRemoteDataSourceProtocol>(),
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
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i52.ResumeRemoteDataSource>(() =>
      _i52.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i13.ConfigReader>(),
          auth: get<_i21.AuthLocalDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i53.ResumeRepository>(() => _i54.ResumeRepositoryImpl(
      dataSource: get<_i52.ResumeRemoteDataSource>(),
      logger: get<_i10.Logger>()));
  gh.lazySingleton<_i55.SignInWithApple>(() => _i55.SignInWithApple(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithEmailAndPassword>(() =>
      _i56.SignInWithEmailAndPassword(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithFacebook>(() => _i57.SignInWithFacebook(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i58.SignInWithGoogle>(() => _i58.SignInWithGoogle(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i59.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i59.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i23.AuthRepository>(),
          networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i60.SplashBloc>(
      () => _i60.SplashBloc(getWalletUser: get<_i31.GetWalletUser>()));
  gh.lazySingleton<_i61.TopUpViaStripe>(() => _i61.TopUpViaStripe(
      networkInfo: get<_i11.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.factory<_i62.TopupViaStripeBloc>(() =>
      _i62.TopupViaStripeBloc(topUpViaStripe: get<_i61.TopUpViaStripe>()));
  gh.factory<_i63.UpdateAcadamicInfo>(() => _i63.UpdateAcadamicInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i64.UpdateAddressInfo>(() => _i64.UpdateAddressInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i65.UpdateKycInfo>(() => _i65.UpdateKycInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i66.UpdateOtherInfo>(() => _i66.UpdateOtherInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i67.UpdatePersonalInfo>(() => _i67.UpdatePersonalInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i68.UpdateQualificationInfo>(() => _i68.UpdateQualificationInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i69.UpdateResumeImage>(() => _i69.UpdateResumeImage(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i70.UpdateWorkInfo>(() => _i70.UpdateWorkInfo(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i71.VerifyEmail>(() => _i71.VerifyEmail(
      repository: get<_i23.AuthRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.factory<_i72.VerifyEmailBloc>(
      () => _i72.VerifyEmailBloc(verifyEmail: get<_i71.VerifyEmail>()));
  gh.lazySingleton<_i73.VerifyEsewaTopup>(() => _i73.VerifyEsewaTopup(
      networkInfo: get<_i11.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.factory<_i74.VerifyEsewaTopupBloc>(() => _i74.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i73.VerifyEsewaTopup>()));
  gh.lazySingleton<_i75.VerifyImePayTopup>(() => _i75.VerifyImePayTopup(
      networkInfo: get<_i11.NetworkInfo>(),
      repository: get<_i37.LoadBalanceRepositories>()));
  gh.lazySingleton<_i76.GetCountries>(() => _i76.GetCountries(
      repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.factory<_i77.GetDownloadablePdfLink>(() => _i77.GetDownloadablePdfLink(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i78.GetFavouriteNews>(() =>
      _i78.GetFavouriteNews(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i79.GetHomePageData>(() => _i79.GetHomePageData(
      repository: get<_i33.HomeReporisitory>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i80.GetLatestNews>(() => _i80.GetLatestNews(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i81.GetListOfCityFromPrefectures>(() =>
      _i81.GetListOfCityFromPrefectures(
          repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i82.GetListOfPaymentMethods>(() =>
      _i82.GetListOfPaymentMethods(
          networkInfo: get<_i11.NetworkInfo>(),
          repository: get<_i37.LoadBalanceRepositories>()));
  gh.lazySingleton<_i83.GetNewsForYou>(() => _i83.GetNewsForYou(
      repository: get<_i45.NewsRepositoryProtocol>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i84.GetNewsGenre>(
      () => _i84.GetNewsGenre(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i85.GetNewsPreferences>(() =>
      _i85.GetNewsPreferences(repository: get<_i45.NewsRepositoryProtocol>()));
  gh.factory<_i86.GetPaymentMethodsBloc>(() => _i86.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i82.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i87.GetPrefectureCityFromPostalCode>(() =>
      _i87.GetPrefectureCityFromPostalCode(
          repository: get<_i40.LocationInformationRepositoryProtocol>()));
  gh.factory<_i88.GetResume>(() => _i88.GetResume(
      repository: get<_i53.ResumeRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.lazySingleton<_i89.HomePageDataBloc>(() =>
      _i89.HomePageDataBloc(getHomePageData: get<_i79.GetHomePageData>()));
  gh.lazySingleton<_i90.JapaneseMannerRepository>(() =>
      _i91.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i35.JapaneseMannersRemoteDataSource>(),
          logger: get<_i10.Logger>()));
  gh.lazySingleton<_i92.LatestNewsBloc>(
      () => _i92.LatestNewsBloc(getNews: get<_i80.GetLatestNews>()));
  gh.factory<_i93.LocationViaPostalCodeBloc>(() =>
      _i93.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i87.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i94.NewsBloc>(
      () => _i94.NewsBloc(getNews: get<_i83.GetNewsForYou>()));
  gh.factory<_i95.NewsGenreBloc>(
      () => _i95.NewsGenreBloc(getNewsGenre: get<_i84.GetNewsGenre>()));
  gh.factory<_i96.NewsPreferenceBloc>(() => _i96.NewsPreferenceBloc(
      getNewsPreferences: get<_i85.GetNewsPreferences>()));
  gh.factory<_i97.PasswordResetBloc>(() => _i97.PasswordResetBloc(
      resetPasswordUseCase: get<_i51.ResetPasswordUseCase>()));
  gh.lazySingleton<_i98.ResumeWatcherBloc>(
      () => _i98.ResumeWatcherBloc(getResume: get<_i88.GetResume>()));
  gh.factory<_i99.SignInFormBloc>(() => _i99.SignInFormBloc(
      signInWithEmailUsecase: get<_i56.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i55.SignInWithApple>(),
      signInWithFacebook: get<_i57.SignInWithFacebook>(),
      signInWithGoogle: get<_i58.SignInWithGoogle>()));
  gh.factory<_i100.SignUpFormBloc>(() => _i100.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i59.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i101.UpdateProfileBloc>(() => _i101.UpdateProfileBloc(
      updateKycInfo: get<_i65.UpdateKycInfo>(),
      updateResumeImage: get<_i69.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i81.GetListOfCityFromPrefectures>()));
  gh.factory<_i102.DownloadPdfBloc>(() => _i102.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i77.GetDownloadablePdfLink>()));
  gh.factory<_i103.FavouriteNewsBloc>(() =>
      _i103.FavouriteNewsBloc(getFavouriteNews: get<_i78.GetFavouriteNews>()));
  gh.factory<_i104.JapaneseMannerBloc>(() => _i104.JapaneseMannerBloc(
      getJapaneseManner: get<_i105.GetJapaneseManner>()));
  gh.factory<_i106.JapaneseMannerCategoriesBloc>(() =>
      _i106.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i107.GetJapaneseMannerCategories>()));
  gh.singleton<_i13.ConfigReader>(_i13.ConfigReaderImpl());
  gh.singleton<_i108.DBProvider>(_i108.DBProviderImpl());
  gh.singleton<_i44.NewsLocalProvider>(
      _i44.NewsLocalProviderImpl(provider: get<_i108.DBProvider>()));
  gh.singleton<_i48.GetPartnerServices>(_i48.GetPartnerServices(
      repository: get<_i15.PartnerServicesRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.singleton<_i50.GetPartnerServicesCategories>(
      _i50.GetPartnerServicesCategories(
          repository: get<_i15.PartnerServicesRepository>(),
          networkInfo: get<_i11.NetworkInfo>()));
  gh.singleton<_i105.GetJapaneseManner>(_i105.GetJapaneseManner(
      repository: get<_i90.JapaneseMannerRepository>(),
      networkInfo: get<_i11.NetworkInfo>()));
  gh.singleton<_i107.GetJapaneseMannerCategories>(
      _i107.GetJapaneseMannerCategories(
          repository: get<_i90.JapaneseMannerRepository>(),
          networkInfo: get<_i11.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i109.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i110.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i111.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i112.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i113.SharedPreferenceModule {}
