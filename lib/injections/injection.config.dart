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
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../core/database/local_database_provider.dart' as _i106;
import '../core/database/news_provider.dart' as _i43;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/logger/logger.dart' as _i9;
import '../core/network/newtork_info.dart' as _i10;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i17;
import '../features/alerts/data/repository/alert_repository.dart' as _i19;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i18;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i24;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i26;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i28;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i25;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i27;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i29;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i20;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i21;
import '../features/auth/data/repository/auth_repository.dart' as _i23;
import '../features/auth/domain/repositories/auth_repository.dart' as _i22;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i30;
import '../features/auth/domain/usecase/logout_user.dart' as _i41;
import '../features/auth/domain/usecase/reset_password.dart' as _i50;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i54;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i56;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i57;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i58;
import '../features/auth/domain/usecase/verify_email.dart' as _i70;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i95;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i97;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i98;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i71;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i31;
import '../features/home/data/repositories/home_repository.dart' as _i33;
import '../features/home/domain/repositories/home_repository.dart' as _i32;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i77;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i87;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i34;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i89;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i88;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i103;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i105;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i102;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i104;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i35;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i37;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i36;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i80;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i60;
import '../features/load_balance/domain/usecases/verify_esewa_top_up.dart'
    as _i72;
import '../features/load_balance/presentations/esewa_form/esewa_form_cubit.dart'
    as _i4;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i84;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i61;
import '../features/load_balance/presentations/verify_esewa_topup/verify_esewa_topup_bloc.dart'
    as _i73;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i38;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i40;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i39;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i74;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i79;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i85;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i91;
import '../features/news/data/datasource/news_local_data_source.dart' as _i42;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i11;
import '../features/news/data/repository/news_repository.dart' as _i45;
import '../features/news/domain/repository/news_repository.dart' as _i44;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i76;
import '../features/news/domain/usecase/get_latest_news.dart' as _i78;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i81;
import '../features/news/domain/usecase/get_news_genre.dart' as _i82;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i83;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i101;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i90;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i92;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i93;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i94;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i13;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i15;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i14;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i47;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i49;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i46;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i48;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i99;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i51;
import '../features/resume/data/repository/resume_repository.dart' as _i53;
import '../features/resume/domain/repository/resume_repository.dart' as _i52;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i75;
import '../features/resume/domain/usecases/get_resume.dart' as _i86;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i62;
import '../features/resume/domain/usecases/update_address_info.dart' as _i63;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i64;
import '../features/resume/domain/usecases/update_other_info.dart' as _i65;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i66;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i67;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i68;
import '../features/resume/domain/usecases/update_work_info.dart' as _i69;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i100;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i96;
import '../features/splash/presentation/splash_bloc.dart' as _i59;
import '../utils/config_reader.dart' as _i12;
import 'injectable/data_connection_checker_injectable_module.dart' as _i110;
import 'injectable/flutter_secure_storage_module.dart' as _i108;
import 'injectable/google_login_injectable_module.dart' as _i109;
import 'injectable/http_client_injectable_module.dart' as _i107;
import 'injectable/shared_preference_module.dart'
    as _i111; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i9.Logger>(() => _i9.LoggerImpl(client: get<_i3.Client>()));
  gh.lazySingleton<_i10.NetworkInfo>(() => _i10.NetworkInfoImpl(
      dataConnectionChecker: get<_i8.InternetConnectionChecker>()));
  gh.lazySingleton<_i11.NewsRemoteDataSourceProtocol>(() =>
      _i11.NewsRemoteDataSource(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i13.PartnerServicesRemoteDataSource>(() =>
      _i13.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i14.PartnerServicesRepository>(() =>
      _i15.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i13.PartnerServicesRemoteDataSource>(),
          logger: get<_i9.Logger>()));
  await gh.factoryAsync<_i16.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i17.AlertRemoteDataSource>(() =>
      _i17.AlertRemoteDataSourceImpl(
          logger: get<_i9.Logger>(),
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>()));
  gh.lazySingleton<_i18.AlertRepository>(() => _i19.AlertRepositoryImpl(
      dataSource: get<_i17.AlertRemoteDataSource>(),
      logger: get<_i9.Logger>()));
  gh.lazySingleton<_i20.AuthLocalDataSource>(() => _i20.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i16.SharedPreferences>(),
      logger: get<_i9.Logger>()));
  gh.lazySingleton<_i21.AuthRemoteDataSource>(() =>
      _i21.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i22.AuthRepository>(() => _i23.AuthRepositoryImpl(
      remoteDataSource: get<_i21.AuthRemoteDataSource>(),
      localDataSource: get<_i20.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>(),
      logger: get<_i9.Logger>()));
  gh.lazySingleton<_i24.GetAlerts>(() => _i24.GetAlerts(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i25.GetAlertsBloc>(
      () => _i25.GetAlertsBloc(getAlerts: get<_i24.GetAlerts>()));
  gh.lazySingleton<_i26.GetEarthquakes>(() => _i26.GetEarthquakes(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i27.GetEarthquakesBloc>(() =>
      _i27.GetEarthquakesBloc(getEarthquakes: get<_i26.GetEarthquakes>()));
  gh.lazySingleton<_i28.GetVolcanoes>(() => _i28.GetVolcanoes(
      repository: get<_i18.AlertRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i29.GetVolcanoesBloc>(
      () => _i29.GetVolcanoesBloc(getVolcanoes: get<_i28.GetVolcanoes>()));
  gh.lazySingleton<_i30.GetWalletUser>(
      () => _i30.GetWalletUser(repository: get<_i22.AuthRepository>()));
  gh.lazySingleton<_i31.HomePageRemoteDataSource>(() =>
      _i31.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i32.HomeReporisitory>(() => _i33.HomeRepositoryImpl(
      remoteDataSource: get<_i31.HomePageRemoteDataSource>(),
      logger: get<_i9.Logger>()));
  gh.lazySingleton<_i34.JapaneseMannersRemoteDataSource>(() =>
      _i34.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i35.LoadBalanceDataSource>(() =>
      _i35.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>()));
  gh.lazySingleton<_i36.LoadBalanceRepositories>(() =>
      _i37.LoadBalanceRepositoriesImpl(
          dataSource: get<_i35.LoadBalanceDataSource>()));
  gh.lazySingleton<_i38.LocationInformationLocalDataSourceProtocol>(() =>
      _i38.LocationInformationLocalDataSource(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i39.LocationInformationRepositoryProtocol>(() =>
      _i40.LocationInformationRepository(
          dataSource: get<_i38.LocationInformationLocalDataSourceProtocol>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i41.LogoutUser>(
      () => _i41.LogoutUser(repository: get<_i22.AuthRepository>()));
  gh.lazySingleton<_i42.NewsLocalDataSourceProtocol>(() =>
      _i42.NewsLocalDataSource(
          localProvider: get<_i43.NewsLocalProvider>(),
          preferences: get<_i16.SharedPreferences>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i44.NewsRepositoryProtocol>(() => _i45.NewsRepository(
      remoteDataSource: get<_i11.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i42.NewsLocalDataSourceProtocol>(),
      logger: get<_i9.Logger>()));
  gh.factory<_i46.ParnterServicesBloc>(() => _i46.ParnterServicesBloc(
      getPartnerServices: get<_i47.GetPartnerServices>()));
  gh.factory<_i48.PartnerServiceCategoriesBloc>(() =>
      _i48.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i49.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i50.ResetPasswordUseCase>(() => _i50.ResetPasswordUseCase(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i51.ResumeRemoteDataSource>(() =>
      _i51.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i12.ConfigReader>(),
          auth: get<_i20.AuthLocalDataSource>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i52.ResumeRepository>(() => _i53.ResumeRepositoryImpl(
      dataSource: get<_i51.ResumeRemoteDataSource>(),
      logger: get<_i9.Logger>()));
  gh.lazySingleton<_i54.SignInWithApple>(() => _i54.SignInWithApple(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i55.SignInWithEmailAndPassword>(() =>
      _i55.SignInWithEmailAndPassword(
          repository: get<_i22.AuthRepository>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i56.SignInWithFacebook>(() => _i56.SignInWithFacebook(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i57.SignInWithGoogle>(() => _i57.SignInWithGoogle(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i58.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i58.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i22.AuthRepository>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i59.SplashBloc>(
      () => _i59.SplashBloc(getWalletUser: get<_i30.GetWalletUser>()));
  gh.lazySingleton<_i60.TopUpViaStripe>(() => _i60.TopUpViaStripe(
      networkInfo: get<_i10.NetworkInfo>(),
      repository: get<_i36.LoadBalanceRepositories>()));
  gh.factory<_i61.TopupViaStripeBloc>(() =>
      _i61.TopupViaStripeBloc(topUpViaStripe: get<_i60.TopUpViaStripe>()));
  gh.factory<_i62.UpdateAcadamicInfo>(() => _i62.UpdateAcadamicInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i63.UpdateAddressInfo>(() => _i63.UpdateAddressInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i64.UpdateKycInfo>(() => _i64.UpdateKycInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i65.UpdateOtherInfo>(() => _i65.UpdateOtherInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i66.UpdatePersonalInfo>(() => _i66.UpdatePersonalInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i67.UpdateQualificationInfo>(() => _i67.UpdateQualificationInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i68.UpdateResumeImage>(() => _i68.UpdateResumeImage(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i69.UpdateWorkInfo>(() => _i69.UpdateWorkInfo(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i70.VerifyEmail>(() => _i70.VerifyEmail(
      repository: get<_i22.AuthRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.factory<_i71.VerifyEmailBloc>(
      () => _i71.VerifyEmailBloc(verifyEmail: get<_i70.VerifyEmail>()));
  gh.lazySingleton<_i72.VerifyEsewaTopup>(() => _i72.VerifyEsewaTopup(
      networkInfo: get<_i10.NetworkInfo>(),
      repository: get<_i36.LoadBalanceRepositories>()));
  gh.factory<_i73.VerifyEsewaTopupBloc>(() => _i73.VerifyEsewaTopupBloc(
      verifyEsewaTopup: get<_i72.VerifyEsewaTopup>()));
  gh.lazySingleton<_i74.GetCountries>(() => _i74.GetCountries(
      repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.factory<_i75.GetDownloadablePdfLink>(() => _i75.GetDownloadablePdfLink(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i76.GetFavouriteNews>(() =>
      _i76.GetFavouriteNews(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i77.GetHomePageData>(() => _i77.GetHomePageData(
      repository: get<_i32.HomeReporisitory>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i78.GetLatestNews>(() => _i78.GetLatestNews(
      repository: get<_i44.NewsRepositoryProtocol>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i79.GetListOfCityFromPrefectures>(() =>
      _i79.GetListOfCityFromPrefectures(
          repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i80.GetListOfPaymentMethods>(() =>
      _i80.GetListOfPaymentMethods(
          networkInfo: get<_i10.NetworkInfo>(),
          repository: get<_i36.LoadBalanceRepositories>()));
  gh.lazySingleton<_i81.GetNewsForYou>(() => _i81.GetNewsForYou(
      repository: get<_i44.NewsRepositoryProtocol>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i82.GetNewsGenre>(
      () => _i82.GetNewsGenre(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i83.GetNewsPreferences>(() =>
      _i83.GetNewsPreferences(repository: get<_i44.NewsRepositoryProtocol>()));
  gh.factory<_i84.GetPaymentMethodsBloc>(() => _i84.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i80.GetListOfPaymentMethods>()));
  gh.lazySingleton<_i85.GetPrefectureCityFromPostalCode>(() =>
      _i85.GetPrefectureCityFromPostalCode(
          repository: get<_i39.LocationInformationRepositoryProtocol>()));
  gh.factory<_i86.GetResume>(() => _i86.GetResume(
      repository: get<_i52.ResumeRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.lazySingleton<_i87.HomePageDataBloc>(() =>
      _i87.HomePageDataBloc(getHomePageData: get<_i77.GetHomePageData>()));
  gh.lazySingleton<_i88.JapaneseMannerRepository>(() =>
      _i89.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i34.JapaneseMannersRemoteDataSource>(),
          logger: get<_i9.Logger>()));
  gh.lazySingleton<_i90.LatestNewsBloc>(
      () => _i90.LatestNewsBloc(getNews: get<_i78.GetLatestNews>()));
  gh.factory<_i91.LocationViaPostalCodeBloc>(() =>
      _i91.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i85.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i92.NewsBloc>(
      () => _i92.NewsBloc(getNews: get<_i81.GetNewsForYou>()));
  gh.factory<_i93.NewsGenreBloc>(
      () => _i93.NewsGenreBloc(getNewsGenre: get<_i82.GetNewsGenre>()));
  gh.factory<_i94.NewsPreferenceBloc>(() => _i94.NewsPreferenceBloc(
      getNewsPreferences: get<_i83.GetNewsPreferences>()));
  gh.factory<_i95.PasswordResetBloc>(() => _i95.PasswordResetBloc(
      resetPasswordUseCase: get<_i50.ResetPasswordUseCase>()));
  gh.lazySingleton<_i96.ResumeWatcherBloc>(
      () => _i96.ResumeWatcherBloc(getResume: get<_i86.GetResume>()));
  gh.factory<_i97.SignInFormBloc>(() => _i97.SignInFormBloc(
      signInWithEmailUsecase: get<_i55.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i54.SignInWithApple>(),
      signInWithFacebook: get<_i56.SignInWithFacebook>(),
      signInWithGoogle: get<_i57.SignInWithGoogle>()));
  gh.factory<_i98.SignUpFormBloc>(() => _i98.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i58.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i99.UpdateProfileBloc>(() => _i99.UpdateProfileBloc(
      updateKycInfo: get<_i64.UpdateKycInfo>(),
      updateResumeImage: get<_i68.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i79.GetListOfCityFromPrefectures>()));
  gh.factory<_i100.DownloadPdfBloc>(() => _i100.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i75.GetDownloadablePdfLink>()));
  gh.factory<_i101.FavouriteNewsBloc>(() =>
      _i101.FavouriteNewsBloc(getFavouriteNews: get<_i76.GetFavouriteNews>()));
  gh.factory<_i102.JapaneseMannerBloc>(() => _i102.JapaneseMannerBloc(
      getJapaneseManner: get<_i103.GetJapaneseManner>()));
  gh.factory<_i104.JapaneseMannerCategoriesBloc>(() =>
      _i104.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i105.GetJapaneseMannerCategories>()));
  gh.singleton<_i12.ConfigReader>(_i12.ConfigReaderImpl());
  gh.singleton<_i106.DBProvider>(_i106.DBProviderImpl());
  gh.singleton<_i43.NewsLocalProvider>(
      _i43.NewsLocalProviderImpl(provider: get<_i106.DBProvider>()));
  gh.singleton<_i47.GetPartnerServices>(_i47.GetPartnerServices(
      repository: get<_i14.PartnerServicesRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.singleton<_i49.GetPartnerServicesCategories>(
      _i49.GetPartnerServicesCategories(
          repository: get<_i14.PartnerServicesRepository>(),
          networkInfo: get<_i10.NetworkInfo>()));
  gh.singleton<_i103.GetJapaneseManner>(_i103.GetJapaneseManner(
      repository: get<_i88.JapaneseMannerRepository>(),
      networkInfo: get<_i10.NetworkInfo>()));
  gh.singleton<_i105.GetJapaneseMannerCategories>(
      _i105.GetJapaneseMannerCategories(
          repository: get<_i88.JapaneseMannerRepository>(),
          networkInfo: get<_i10.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i107.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i108.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i109.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i110.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i111.SharedPreferenceModule {}
