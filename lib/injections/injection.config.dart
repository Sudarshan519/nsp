// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../core/database/local_database_provider.dart' as _i104;
import '../core/database/news_provider.dart' as _i48;
import '../core/file_picker/file_provider.dart' as _i4;
import '../core/network/newtork_info.dart' as _i14;
import '../features/alerts/data/data_source/alerts_remote_data_source.dart'
    as _i20;
import '../features/alerts/data/repository/alert_repository.dart' as _i22;
import '../features/alerts/domain/repositories/alert_repository.dart' as _i21;
import '../features/alerts/domain/usecase/get_alerts.dart' as _i27;
import '../features/alerts/domain/usecase/get_earthquakes.dart' as _i30;
import '../features/alerts/domain/usecase/get_volcanoes.dart' as _i34;
import '../features/alerts/presentation/get_alerts/get_alerts_bloc.dart'
    as _i28;
import '../features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart'
    as _i31;
import '../features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart'
    as _i35;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i23;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i24;
import '../features/auth/data/repository/auth_repository.dart' as _i26;
import '../features/auth/domain/repositories/auth_repository.dart' as _i25;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i36;
import '../features/auth/domain/usecase/logout_user.dart' as _i46;
import '../features/auth/domain/usecase/reset_password.dart' as _i55;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i59;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i60;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i61;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i62;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i63;
import '../features/auth/domain/usecase/verify_email.dart' as _i75;
import '../features/auth/presentation/password_reset/password_reset_bloc.dart'
    as _i97;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i99;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i100;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i76;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i37;
import '../features/home/data/repositories/home_repository.dart' as _i39;
import '../features/home/domain/repositories/home_repository.dart' as _i38;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i80;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i88;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i9;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i41;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i40;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i90;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i92;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i89;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i91;
import '../features/load_balance/data/datasource/load_balance_data_source.dart'
    as _i42;
import '../features/load_balance/data/repositories/load_balance_repositories.dart'
    as _i44;
import '../features/load_balance/domain/repositories/load_balance_repositories.dart'
    as _i43;
import '../features/load_balance/domain/usecases/get_list_of_payment_methods.dart'
    as _i82;
import '../features/load_balance/domain/usecases/top_up_via_stripe.dart'
    as _i65;
import '../features/load_balance/domain/usecases/verify_ime_pay_top_up.dart'
    as _i77;
import '../features/load_balance/presentations/get_payment_methods/get_payment_methods_bloc.dart'
    as _i86;
import '../features/load_balance/presentations/ime_pay_form/ime_pay_form_cubit.dart'
    as _i7;
import '../features/load_balance/presentations/topup_via_stripe/topup_via_stripe_bloc.dart'
    as _i66;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i11;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i13;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i12;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i29;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i32;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i33;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i45;
import '../features/news/data/datasource/news_local_data_source.dart' as _i47;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i15;
import '../features/news/data/repository/news_repository.dart' as _i50;
import '../features/news/domain/repository/news_repository.dart' as _i49;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i79;
import '../features/news/domain/usecase/get_latest_news.dart' as _i81;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i83;
import '../features/news/domain/usecase/get_news_genre.dart' as _i84;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i85;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i103;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i93;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i94;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i95;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i96;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i16;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i18;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i17;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i52;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i54;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i51;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i53;
import '../features/profile/presentations/bloc/update_profile_bloc.dart'
    as _i101;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i56;
import '../features/resume/data/repository/resume_repository.dart' as _i58;
import '../features/resume/domain/repository/resume_repository.dart' as _i57;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i78;
import '../features/resume/domain/usecases/get_resume.dart' as _i87;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i67;
import '../features/resume/domain/usecases/update_address_info.dart' as _i68;
import '../features/resume/domain/usecases/update_kyc_info.dart' as _i69;
import '../features/resume/domain/usecases/update_other_info.dart' as _i70;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i71;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i72;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i73;
import '../features/resume/domain/usecases/update_work_info.dart' as _i74;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i102;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i98;
import '../features/splash/presentation/splash_bloc.dart' as _i64;
import '../utils/config_reader.dart' as _i10;
import 'injectable/data_connection_checker_injectable_module.dart' as _i108;
import 'injectable/flutter_secure_storage_module.dart' as _i106;
import 'injectable/google_login_injectable_module.dart' as _i107;
import 'injectable/http_client_injectable_module.dart' as _i105;
import 'injectable/shared_preference_module.dart'
    as _i109; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.FileProvider>(() => _i4.FileProvider());
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.factory<_i7.ImePayFormCubit>(() => _i7.ImePayFormCubit());
  gh.lazySingleton<_i8.InternetConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i9.JapaneseMannersRemoteDataSource>(() =>
      _i9.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i11.LocationInformationLocalDataSourceProtocol>(() =>
      _i11.LocationInformationLocalDataSource(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i12.LocationInformationRepositoryProtocol>(() =>
      _i13.LocationInformationRepository(
          dataSource: get<_i11.LocationInformationLocalDataSourceProtocol>()));
  gh.lazySingleton<_i14.NetworkInfo>(() => _i14.NetworkInfoImpl(
      dataConnectionChecker: get<_i8.InternetConnectionChecker>()));
  gh.lazySingleton<_i15.NewsRemoteDataSourceProtocol>(() =>
      _i15.NewsRemoteDataSource(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i16.PartnerServicesRemoteDataSource>(() =>
      _i16.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i17.PartnerServicesRepository>(() =>
      _i18.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i16.PartnerServicesRemoteDataSource>()));
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i20.AlertRemoteDataSource>(() =>
      _i20.AlertRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i21.AlertRepository>(() =>
      _i22.AlertRepositoryImpl(dataSource: get<_i20.AlertRemoteDataSource>()));
  gh.lazySingleton<_i23.AuthLocalDataSource>(() => _i23.AuthLocalDataSourceImpl(
      secureStorage: get<_i5.FlutterSecureStorage>(),
      preferences: get<_i19.SharedPreferences>()));
  gh.lazySingleton<_i24.AuthRemoteDataSource>(() =>
      _i24.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i10.ConfigReader>()));
  gh.lazySingleton<_i25.AuthRepository>(() => _i26.AuthRepositoryImpl(
      remoteDataSource: get<_i24.AuthRemoteDataSource>(),
      localDataSource: get<_i23.AuthLocalDataSource>(),
      googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i27.GetAlerts>(() => _i27.GetAlerts(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i28.GetAlertsBloc>(
      () => _i28.GetAlertsBloc(getAlerts: get<_i27.GetAlerts>()));
  gh.lazySingleton<_i29.GetCountries>(() => _i29.GetCountries(
      repository: get<_i12.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i30.GetEarthquakes>(() => _i30.GetEarthquakes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i31.GetEarthquakesBloc>(() =>
      _i31.GetEarthquakesBloc(getEarthquakes: get<_i30.GetEarthquakes>()));
  gh.lazySingleton<_i32.GetListOfCityFromPrefectures>(() =>
      _i32.GetListOfCityFromPrefectures(
          repository: get<_i12.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i33.GetPrefectureCityFromPostalCode>(() =>
      _i33.GetPrefectureCityFromPostalCode(
          repository: get<_i12.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i34.GetVolcanoes>(() => _i34.GetVolcanoes(
      repository: get<_i21.AlertRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i35.GetVolcanoesBloc>(
      () => _i35.GetVolcanoesBloc(getVolcanoes: get<_i34.GetVolcanoes>()));
  gh.lazySingleton<_i36.GetWalletUser>(
      () => _i36.GetWalletUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i37.HomePageRemoteDataSource>(() =>
      _i37.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i10.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>()));
  gh.lazySingleton<_i38.HomeReporisitory>(() => _i39.HomeRepositoryImpl(
      remoteDataSource: get<_i37.HomePageRemoteDataSource>()));
  gh.lazySingleton<_i40.JapaneseMannerRepository>(() =>
      _i41.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i9.JapaneseMannersRemoteDataSource>()));
  gh.lazySingleton<_i42.LoadBalanceDataSource>(() =>
      _i42.LoadBalanceDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i10.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>()));
  gh.lazySingleton<_i43.LoadBalanceRepositories>(() =>
      _i44.LoadBalanceRepositoriesImpl(
          dataSource: get<_i42.LoadBalanceDataSource>()));
  gh.factory<_i45.LocationViaPostalCodeBloc>(() =>
      _i45.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i33.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i46.LogoutUser>(
      () => _i46.LogoutUser(repository: get<_i25.AuthRepository>()));
  gh.lazySingleton<_i47.NewsLocalDataSourceProtocol>(() =>
      _i47.NewsLocalDataSource(
          localProvider: get<_i48.NewsLocalProvider>(),
          preferences: get<_i19.SharedPreferences>()));
  gh.lazySingleton<_i49.NewsRepositoryProtocol>(() => _i50.NewsRepository(
      remoteDataSource: get<_i15.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i47.NewsLocalDataSourceProtocol>()));
  gh.factory<_i51.ParnterServicesBloc>(() => _i51.ParnterServicesBloc(
      getPartnerServices: get<_i52.GetPartnerServices>()));
  gh.factory<_i53.PartnerServiceCategoriesBloc>(() =>
      _i53.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i54.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i55.ResetPasswordUseCase>(() => _i55.ResetPasswordUseCase(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i56.ResumeRemoteDataSource>(() =>
      _i56.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i10.ConfigReader>(),
          auth: get<_i23.AuthLocalDataSource>()));
  gh.lazySingleton<_i57.ResumeRepository>(() => _i58.ResumeRepositoryImpl(
      dataSource: get<_i56.ResumeRemoteDataSource>()));
  gh.lazySingleton<_i59.SignInWithApple>(() => _i59.SignInWithApple(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i60.SignInWithEmailAndPassword>(() =>
      _i60.SignInWithEmailAndPassword(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i61.SignInWithFacebook>(() => _i61.SignInWithFacebook(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i62.SignInWithGoogle>(() => _i62.SignInWithGoogle(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i63.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i63.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i25.AuthRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i64.SplashBloc>(
      () => _i64.SplashBloc(getWalletUser: get<_i36.GetWalletUser>()));
  gh.lazySingleton<_i65.TopUpViaStripe>(() => _i65.TopUpViaStripe(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i43.LoadBalanceRepositories>()));
  gh.factory<_i66.TopupViaStripeBloc>(() =>
      _i66.TopupViaStripeBloc(topUpViaStripe: get<_i65.TopUpViaStripe>()));
  gh.factory<_i67.UpdateAcadamicInfo>(() => _i67.UpdateAcadamicInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i68.UpdateAddressInfo>(() => _i68.UpdateAddressInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i69.UpdateKycInfo>(() => _i69.UpdateKycInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i70.UpdateOtherInfo>(() => _i70.UpdateOtherInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i71.UpdatePersonalInfo>(() => _i71.UpdatePersonalInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i72.UpdateQualificationInfo>(() => _i72.UpdateQualificationInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i73.UpdateResumeImage>(() => _i73.UpdateResumeImage(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i74.UpdateWorkInfo>(() => _i74.UpdateWorkInfo(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i75.VerifyEmail>(() => _i75.VerifyEmail(
      repository: get<_i25.AuthRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.factory<_i76.VerifyEmailBloc>(
      () => _i76.VerifyEmailBloc(verifyEmail: get<_i75.VerifyEmail>()));
  gh.lazySingleton<_i77.VerifyImePayTopup>(() => _i77.VerifyImePayTopup(
      networkInfo: get<_i14.NetworkInfo>(),
      repository: get<_i43.LoadBalanceRepositories>()));
  gh.factory<_i78.GetDownloadablePdfLink>(() => _i78.GetDownloadablePdfLink(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i79.GetFavouriteNews>(() =>
      _i79.GetFavouriteNews(repository: get<_i49.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i80.GetHomePageData>(() => _i80.GetHomePageData(
      repository: get<_i38.HomeReporisitory>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i81.GetLatestNews>(() => _i81.GetLatestNews(
      repository: get<_i49.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i82.GetListOfPaymentMethods>(() =>
      _i82.GetListOfPaymentMethods(
          networkInfo: get<_i14.NetworkInfo>(),
          repository: get<_i43.LoadBalanceRepositories>()));
  gh.lazySingleton<_i83.GetNewsForYou>(() => _i83.GetNewsForYou(
      repository: get<_i49.NewsRepositoryProtocol>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i84.GetNewsGenre>(
      () => _i84.GetNewsGenre(repository: get<_i49.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i85.GetNewsPreferences>(() =>
      _i85.GetNewsPreferences(repository: get<_i49.NewsRepositoryProtocol>()));
  gh.factory<_i86.GetPaymentMethodsBloc>(() => _i86.GetPaymentMethodsBloc(
      getListOfPaymentMethods: get<_i82.GetListOfPaymentMethods>()));
  gh.factory<_i87.GetResume>(() => _i87.GetResume(
      repository: get<_i57.ResumeRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.lazySingleton<_i88.HomePageDataBloc>(() =>
      _i88.HomePageDataBloc(getHomePageData: get<_i80.GetHomePageData>()));
  gh.factory<_i89.JapaneseMannerBloc>(() => _i89.JapaneseMannerBloc(
      getJapaneseManner: get<_i90.GetJapaneseManner>()));
  gh.factory<_i91.JapaneseMannerCategoriesBloc>(() =>
      _i91.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i92.GetJapaneseMannerCategories>()));
  gh.lazySingleton<_i93.LatestNewsBloc>(
      () => _i93.LatestNewsBloc(getNews: get<_i81.GetLatestNews>()));
  gh.lazySingleton<_i94.NewsBloc>(
      () => _i94.NewsBloc(getNews: get<_i83.GetNewsForYou>()));
  gh.factory<_i95.NewsGenreBloc>(
      () => _i95.NewsGenreBloc(getNewsGenre: get<_i84.GetNewsGenre>()));
  gh.factory<_i96.NewsPreferenceBloc>(() => _i96.NewsPreferenceBloc(
      getNewsPreferences: get<_i85.GetNewsPreferences>()));
  gh.factory<_i97.PasswordResetBloc>(() => _i97.PasswordResetBloc(
      resetPasswordUseCase: get<_i55.ResetPasswordUseCase>()));
  gh.lazySingleton<_i98.ResumeWatcherBloc>(
      () => _i98.ResumeWatcherBloc(getResume: get<_i87.GetResume>()));
  gh.factory<_i99.SignInFormBloc>(() => _i99.SignInFormBloc(
      signInWithEmailUsecase: get<_i60.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i59.SignInWithApple>(),
      signInWithFacebook: get<_i61.SignInWithFacebook>(),
      signInWithGoogle: get<_i62.SignInWithGoogle>()));
  gh.factory<_i100.SignUpFormBloc>(() => _i100.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i63.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i101.UpdateProfileBloc>(() => _i101.UpdateProfileBloc(
      updateKycInfo: get<_i69.UpdateKycInfo>(),
      updateResumeImage: get<_i73.UpdateResumeImage>(),
      getListOfCityFromPrefectures: get<_i32.GetListOfCityFromPrefectures>()));
  gh.factory<_i102.DownloadPdfBloc>(() => _i102.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i78.GetDownloadablePdfLink>()));
  gh.factory<_i103.FavouriteNewsBloc>(() =>
      _i103.FavouriteNewsBloc(getFavouriteNews: get<_i79.GetFavouriteNews>()));
  gh.singleton<_i10.ConfigReader>(_i10.ConfigReaderImpl());
  gh.singleton<_i104.DBProvider>(_i104.DBProviderImpl());
  gh.singleton<_i48.NewsLocalProvider>(
      _i48.NewsLocalProviderImpl(provider: get<_i104.DBProvider>()));
  gh.singleton<_i52.GetPartnerServices>(_i52.GetPartnerServices(
      repository: get<_i17.PartnerServicesRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i54.GetPartnerServicesCategories>(
      _i54.GetPartnerServicesCategories(
          repository: get<_i17.PartnerServicesRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i90.GetJapaneseManner>(_i90.GetJapaneseManner(
      repository: get<_i40.JapaneseMannerRepository>(),
      networkInfo: get<_i14.NetworkInfo>()));
  gh.singleton<_i92.GetJapaneseMannerCategories>(
      _i92.GetJapaneseMannerCategories(
          repository: get<_i40.JapaneseMannerRepository>(),
          networkInfo: get<_i14.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i105.HttpClientInjectableModule {}

class _$FlutterStorageModule extends _i106.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i107.GoogleLoginInjectableModule {}

class _$DataConnectionCheckerModule extends _i108.DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends _i109.SharedPreferenceModule {}
