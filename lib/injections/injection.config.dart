// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../core/database/local_database_provider.dart' as _i82;
import '../core/database/news_provider.dart' as _i35;
import '../core/file_picker/file_provider.dart' as _i5;
import '../core/network/newtork_info.dart' as _i13;
import '../features/auth/data/datasource/auth_local_data_source.dart' as _i19;
import '../features/auth/data/datasource/auth_remote_data_source.dart' as _i20;
import '../features/auth/data/repository/auth_repository.dart' as _i22;
import '../features/auth/domain/repositories/auth_repository.dart' as _i21;
import '../features/auth/domain/usecase/get_wallet_user.dart' as _i26;
import '../features/auth/domain/usecase/logout_user.dart' as _i33;
import '../features/auth/domain/usecase/sign_in_with_apple.dart' as _i45;
import '../features/auth/domain/usecase/sign_in_with_email.dart' as _i46;
import '../features/auth/domain/usecase/sign_in_with_facebook.dart' as _i47;
import '../features/auth/domain/usecase/sign_in_with_google.dart' as _i48;
import '../features/auth/domain/usecase/sign_up_user.dart' as _i49;
import '../features/auth/domain/usecase/verify_email.dart' as _i58;
import '../features/auth/presentation/sign_in_form/sign_in_form_bloc.dart'
    as _i78;
import '../features/auth/presentation/sign_up/sign_up_form_bloc.dart' as _i79;
import '../features/auth/presentation/verify_email/verify_email_bloc.dart'
    as _i59;
import '../features/home/data/datasource/home_remote_data_source.dart' as _i27;
import '../features/home/data/repositories/home_repository.dart' as _i29;
import '../features/home/domain/repositories/home_repository.dart' as _i28;
import '../features/home/domain/usecases/get_home_page_data.dart' as _i62;
import '../features/home/presentation/home_page_data/home_page_data_bloc.dart'
    as _i68;
import '../features/japanese_manners/data/datasource/japanese_manners_remote_data_source.dart'
    as _i8;
import '../features/japanese_manners/data/repositories/japanese_manner_repository.dart'
    as _i31;
import '../features/japanese_manners/domain/repositories/japanese_manner_repository.dart'
    as _i30;
import '../features/japanese_manners/domain/usecase/get_japanese_manner.dart'
    as _i70;
import '../features/japanese_manners/domain/usecase/get_japanese_manner_categories.dart'
    as _i72;
import '../features/japanese_manners/presentation/japanese_manner/japanese_manner_bloc.dart'
    as _i69;
import '../features/japanese_manners/presentation/japanese_manner_categories/japanese_manner_categories_bloc.dart'
    as _i71;
import '../features/location_information/data/datasource/location_information_local_datasource.dart'
    as _i10;
import '../features/location_information/data/repository/location_information_repositories.dart'
    as _i12;
import '../features/location_information/domain/repository/location_information_repositories.dart'
    as _i11;
import '../features/location_information/domain/usecases/get_countries.dart'
    as _i23;
import '../features/location_information/domain/usecases/get_list_of_cities_from_prefectures.dart'
    as _i24;
import '../features/location_information/domain/usecases/get_prefecture_city_from_postalcode.dart'
    as _i25;
import '../features/location_information/presentation/bloc/location_via_postal_code_bloc.dart'
    as _i32;
import '../features/news/data/datasource/news_local_data_source.dart' as _i34;
import '../features/news/data/datasource/news_remote_data_source.dart' as _i14;
import '../features/news/data/repository/news_repository.dart' as _i37;
import '../features/news/domain/repository/news_repository.dart' as _i36;
import '../features/news/domain/usecase/get_favourite_news.dart' as _i61;
import '../features/news/domain/usecase/get_latest_news.dart' as _i63;
import '../features/news/domain/usecase/get_news_for_you.dart' as _i64;
import '../features/news/domain/usecase/get_news_genre.dart' as _i65;
import '../features/news/domain/usecase/get_news_preferences.dart' as _i66;
import '../features/news/presentation/favourite_news/favourite_news_bloc.dart'
    as _i81;
import '../features/news/presentation/latest_news/latest_news_bloc.dart'
    as _i73;
import '../features/news/presentation/news_for_you/news_bloc.dart' as _i74;
import '../features/news/presentation/news_genre/news_genre_bloc.dart' as _i75;
import '../features/news/presentation/news_preference/news_preference_bloc.dart'
    as _i76;
import '../features/partner_services/data/datasource/partner_services_remote_data_source.dart'
    as _i15;
import '../features/partner_services/data/repositories/partner_service_repository.dart'
    as _i17;
import '../features/partner_services/domain/repositories/partner_services_repository.dart'
    as _i16;
import '../features/partner_services/domain/usecase/get_partner_services.dart'
    as _i39;
import '../features/partner_services/domain/usecase/get_partner_services_categories.dart'
    as _i41;
import '../features/partner_services/presentation/partner_services/parnter_services_bloc.dart'
    as _i38;
import '../features/partner_services/presentation/partner_services_categories/partner_service_categories_bloc.dart'
    as _i40;
import '../features/resume/data/data_source/resume_remote_data_source.dart'
    as _i42;
import '../features/resume/data/repository/resume_repository.dart' as _i44;
import '../features/resume/domain/repository/resume_repository.dart' as _i43;
import '../features/resume/domain/usecases/get_downloadable_pdf_link.dart'
    as _i60;
import '../features/resume/domain/usecases/get_resume.dart' as _i67;
import '../features/resume/domain/usecases/update_academics_info.dart' as _i51;
import '../features/resume/domain/usecases/update_address_info.dart' as _i52;
import '../features/resume/domain/usecases/update_other_info.dart' as _i53;
import '../features/resume/domain/usecases/update_personal_info.dart' as _i54;
import '../features/resume/domain/usecases/update_qualification_info.dart'
    as _i55;
import '../features/resume/domain/usecases/update_resume_image.dart' as _i56;
import '../features/resume/domain/usecases/update_work_info.dart' as _i57;
import '../features/resume/presentation/download_pdf/download_pdf_bloc.dart'
    as _i80;
import '../features/resume/presentation/resume_watcher/resume_watcher_bloc.dart'
    as _i77;
import '../features/splash/presentation/splash_bloc.dart' as _i50;
import '../utils/config_reader.dart' as _i9;
import 'injectable/data_connection_checker_injectable_module.dart' as _i84;
import 'injectable/flutter_secure_storage_module.dart' as _i85;
import 'injectable/google_login_injectable_module.dart' as _i86;
import 'injectable/http_client_injectable_module.dart' as _i83;
import 'injectable/shared_preference_module.dart'
    as _i87; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final flutterStorageModule = _$FlutterStorageModule();
  final googleLoginInjectableModule = _$GoogleLoginInjectableModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<_i3.Client>(() => httpClientInjectableModule.client);
  gh.lazySingleton<_i4.DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionChecker);
  gh.lazySingleton<_i5.FileProvider>(() => _i5.FileProvider());
  gh.lazySingleton<_i6.FlutterSecureStorage>(
      () => flutterStorageModule.secureStorate);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => googleLoginInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.JapaneseMannersRemoteDataSource>(() =>
      _i8.JapaneseMannersRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i10.LocationInformationLocalDataSourceProtocol>(() =>
      _i10.LocationInformationLocalDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i11.LocationInformationRepositoryProtocol>(() =>
      _i12.LocationInformationRepository(
          dataSource: get<_i10.LocationInformationLocalDataSourceProtocol>()));
  gh.lazySingleton<_i13.NetworkInfo>(() => _i13.NetworkInfoImpl(
      dataConnectionChecker: get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i14.NewsRemoteDataSourceProtocol>(() =>
      _i14.NewsRemoteDataSource(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i15.PartnerServicesRemoteDataSource>(() =>
      _i15.PartnerServicesRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i16.PartnerServicesRepository>(() =>
      _i17.PartnerServicesRepositoryImpl(
          remoteDataSource: get<_i15.PartnerServicesRemoteDataSource>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
      () => sharedPreferenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i19.AuthLocalDataSource>(() => _i19.AuthLocalDataSourceImpl(
      secureStorage: get<_i6.FlutterSecureStorage>(),
      preferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i20.AuthRemoteDataSource>(() =>
      _i20.AuthRemoteDataSourceImpl(
          client: get<_i3.Client>(), config: get<_i9.ConfigReader>()));
  gh.lazySingleton<_i21.AuthRepository>(() => _i22.AuthRepositoryImpl(
      remoteDataSource: get<_i20.AuthRemoteDataSource>(),
      localDataSource: get<_i19.AuthLocalDataSource>(),
      googleSignIn: get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i23.GetCountries>(() => _i23.GetCountries(
      repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i24.GetListOfCityFromPrefectures>(() =>
      _i24.GetListOfCityFromPrefectures(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i25.GetPrefectureCityFromPostalCode>(() =>
      _i25.GetPrefectureCityFromPostalCode(
          repository: get<_i11.LocationInformationRepositoryProtocol>()));
  gh.lazySingleton<_i26.GetWalletUser>(
      () => _i26.GetWalletUser(repository: get<_i21.AuthRepository>()));
  gh.lazySingleton<_i27.HomePageRemoteDataSource>(() =>
      _i27.HomePageRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i19.AuthLocalDataSource>()));
  gh.lazySingleton<_i28.HomeReporisitory>(() => _i29.HomeRepositoryImpl(
      remoteDataSource: get<_i27.HomePageRemoteDataSource>()));
  gh.lazySingleton<_i30.JapaneseMannerRepository>(() =>
      _i31.JapaneseMannerRepositoryImpl(
          remoteDataSource: get<_i8.JapaneseMannersRemoteDataSource>()));
  gh.factory<_i32.LocationViaPostalCodeBloc>(() =>
      _i32.LocationViaPostalCodeBloc(
          getPrefectureCityFromPostalCode:
              get<_i25.GetPrefectureCityFromPostalCode>()));
  gh.lazySingleton<_i33.LogoutUser>(
      () => _i33.LogoutUser(repository: get<_i21.AuthRepository>()));
  gh.lazySingleton<_i34.NewsLocalDataSourceProtocol>(() =>
      _i34.NewsLocalDataSource(localProvider: get<_i35.NewsLocalProvider>()));
  gh.lazySingleton<_i36.NewsRepositoryProtocol>(() => _i37.NewsRepository(
      remoteDataSource: get<_i14.NewsRemoteDataSourceProtocol>(),
      localDataSource: get<_i34.NewsLocalDataSourceProtocol>()));
  gh.factory<_i38.ParnterServicesBloc>(() => _i38.ParnterServicesBloc(
      getPartnerServices: get<_i39.GetPartnerServices>()));
  gh.factory<_i40.PartnerServiceCategoriesBloc>(() =>
      _i40.PartnerServiceCategoriesBloc(
          getPartnerServicesCategories:
              get<_i41.GetPartnerServicesCategories>()));
  gh.lazySingleton<_i42.ResumeRemoteDataSource>(() =>
      _i42.ResumeRemoteDataSourceImpl(
          client: get<_i3.Client>(),
          config: get<_i9.ConfigReader>(),
          auth: get<_i19.AuthLocalDataSource>()));
  gh.lazySingleton<_i43.ResumeRepository>(() => _i44.ResumeRepositoryImpl(
      dataSource: get<_i42.ResumeRemoteDataSource>()));
  gh.lazySingleton<_i45.SignInWithApple>(() => _i45.SignInWithApple(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i46.SignInWithEmailAndPassword>(() =>
      _i46.SignInWithEmailAndPassword(
          repository: get<_i21.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i47.SignInWithFacebook>(() => _i47.SignInWithFacebook(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i48.SignInWithGoogle>(() => _i48.SignInWithGoogle(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i49.SignUpWithEmailPasswordAndUserDetail>(() =>
      _i49.SignUpWithEmailPasswordAndUserDetail(
          repository: get<_i21.AuthRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i50.SplashBloc>(
      () => _i50.SplashBloc(getWalletUser: get<_i26.GetWalletUser>()));
  gh.factory<_i51.UpdateAcadamicInfo>(() => _i51.UpdateAcadamicInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i52.UpdateAddressInfo>(() => _i52.UpdateAddressInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i53.UpdateOtherInfo>(() => _i53.UpdateOtherInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i54.UpdatePersonalInfo>(() => _i54.UpdatePersonalInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i55.UpdateQualificationInfo>(() => _i55.UpdateQualificationInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i56.UpdateResumeImage>(() => _i56.UpdateResumeImage(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i57.UpdateWorkInfo>(() => _i57.UpdateWorkInfo(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i58.VerifyEmail>(() => _i58.VerifyEmail(
      repository: get<_i21.AuthRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.factory<_i59.VerifyEmailBloc>(
      () => _i59.VerifyEmailBloc(verifyEmail: get<_i58.VerifyEmail>()));
  gh.factory<_i60.GetDownloadablePdfLink>(() => _i60.GetDownloadablePdfLink(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i61.GetFavouriteNews>(() =>
      _i61.GetFavouriteNews(repository: get<_i36.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i62.GetHomePageData>(
      () => _i62.GetHomePageData(repository: get<_i28.HomeReporisitory>()));
  gh.lazySingleton<_i63.GetLatestNews>(() => _i63.GetLatestNews(
      repository: get<_i36.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i64.GetNewsForYou>(() => _i64.GetNewsForYou(
      repository: get<_i36.NewsRepositoryProtocol>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i65.GetNewsGenre>(
      () => _i65.GetNewsGenre(repository: get<_i36.NewsRepositoryProtocol>()));
  gh.lazySingleton<_i66.GetNewsPreferences>(() =>
      _i66.GetNewsPreferences(repository: get<_i36.NewsRepositoryProtocol>()));
  gh.factory<_i67.GetResume>(() => _i67.GetResume(
      repository: get<_i43.ResumeRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i68.HomePageDataBloc>(() =>
      _i68.HomePageDataBloc(getHomePageData: get<_i62.GetHomePageData>()));
  gh.factory<_i69.JapaneseMannerBloc>(() => _i69.JapaneseMannerBloc(
      getJapaneseManner: get<_i70.GetJapaneseManner>()));
  gh.factory<_i71.JapaneseMannerCategoriesBloc>(() =>
      _i71.JapaneseMannerCategoriesBloc(
          getJapaneseMannerCategories:
              get<_i72.GetJapaneseMannerCategories>()));
  gh.factory<_i73.LatestNewsBloc>(
      () => _i73.LatestNewsBloc(getNews: get<_i63.GetLatestNews>()));
  gh.factory<_i74.NewsBloc>(
      () => _i74.NewsBloc(getNews: get<_i64.GetNewsForYou>()));
  gh.factory<_i75.NewsGenreBloc>(
      () => _i75.NewsGenreBloc(getNewsGenre: get<_i65.GetNewsGenre>()));
  gh.factory<_i76.NewsPreferenceBloc>(() => _i76.NewsPreferenceBloc(
      getNewsPreferences: get<_i66.GetNewsPreferences>()));
  gh.lazySingleton<_i77.ResumeWatcherBloc>(
      () => _i77.ResumeWatcherBloc(getResume: get<_i67.GetResume>()));
  gh.factory<_i78.SignInFormBloc>(() => _i78.SignInFormBloc(
      signInWithEmailUsecase: get<_i46.SignInWithEmailAndPassword>(),
      signInWithApple: get<_i45.SignInWithApple>(),
      signInWithFacebook: get<_i47.SignInWithFacebook>(),
      signInWithGoogle: get<_i48.SignInWithGoogle>()));
  gh.factory<_i79.SignUpFormBloc>(() => _i79.SignUpFormBloc(
      signUpWithEmailUsecase:
          get<_i49.SignUpWithEmailPasswordAndUserDetail>()));
  gh.factory<_i80.DownloadPdfBloc>(() => _i80.DownloadPdfBloc(
      getDownloadablePdfLink: get<_i60.GetDownloadablePdfLink>()));
  gh.factory<_i81.FavouriteNewsBloc>(() =>
      _i81.FavouriteNewsBloc(getFavouriteNews: get<_i61.GetFavouriteNews>()));
  gh.singleton<_i9.ConfigReader>(_i9.ConfigReaderImpl());
  gh.singleton<_i82.DBProvider>(_i82.DBProviderImpl());
  gh.singleton<_i35.NewsLocalProvider>(
      _i35.NewsLocalProviderImpl(provider: get<_i82.DBProvider>()));
  gh.singleton<_i39.GetPartnerServices>(_i39.GetPartnerServices(
      repository: get<_i16.PartnerServicesRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i41.GetPartnerServicesCategories>(
      _i41.GetPartnerServicesCategories(
          repository: get<_i16.PartnerServicesRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i70.GetJapaneseManner>(_i70.GetJapaneseManner(
      repository: get<_i30.JapaneseMannerRepository>(),
      networkInfo: get<_i13.NetworkInfo>()));
  gh.singleton<_i72.GetJapaneseMannerCategories>(
      _i72.GetJapaneseMannerCategories(
          repository: get<_i30.JapaneseMannerRepository>(),
          networkInfo: get<_i13.NetworkInfo>()));
  return get;
}

class _$HttpClientInjectableModule extends _i83.HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends _i84.DataConnectionCheckerModule {}

class _$FlutterStorageModule extends _i85.FlutterStorageModule {}

class _$GoogleLoginInjectableModule extends _i86.GoogleLoginInjectableModule {}

class _$SharedPreferenceModule extends _i87.SharedPreferenceModule {}
