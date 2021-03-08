// import 'package:http/http.dart' as http;

import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:wallet_app/features/resume/data/data_source/resume_remote_data_source.dart';

import '../../../mocks/mocks.dart';
// import '../../../utils/test_constant/auth/test_constant.dart';

void main() {
  MockHttpClient client;
  MockConfigReader config;
  MockAuthLocalDataSourceProtocol auth;
  // ResumeRemoteDataSourceImpl sut;

  // final headers = {
  //   'Accept': 'application/json',
  //   "Content-Type": 'application/json',
  //   "Authorization": 'Bearer ${AuthTestConstant.USER_DETAILS.uuid}'
  // };

  // void setUpHTTPCLient200() {
  //   when(auth.getUserDetail())
  //       .thenAnswer((_) async => AuthTestConstant.USER_DETAILS);
  //   when(client.post(
  //     any,
  //     headers: anyNamed('headers'),
  //     body: anyNamed('body'),
  //   )).thenAnswer((_) async => http.Response(
  //         "",
  //         200,
  //       ));
  // }

  // void setUpHTTPCLient500() {
  //   when(auth.getWalletUser())
  //       .thenAnswer((_) async => AuthTestConstant.WALLET_USER);
  //   when(client.post(
  //     any,
  //     headers: anyNamed('headers'),
  //     body: anyNamed('body'),
  //   )).thenAnswer(
  //     (_) async => http.Response(
  //       "",
  //       500,
  //     ),
  //   );
  // }

  // void setUpHTTPCLientThrowException() {
  //   when(auth.getWalletUser())
  //       .thenAnswer((_) async => AuthTestConstant.WALLET_USER);
  //   when(client.post(
  //     any,
  //     headers: anyNamed('headers'),
  //     body: anyNamed('body'),
  //   )).thenThrow(Exception());
  // }

  setUp(() {
    config = MockConfigReader();
    client = MockHttpClient();
    auth = MockAuthLocalDataSourceProtocol();
    // sut = ResumeRemoteDataSourceImpl(
    //   client: client,
    //   config: config,
    //   auth: auth,
    // );
  });

  group('assertion test', () {
    test('should return assert error if client is null', () {
      expect(
        () => ResumeRemoteDataSourceImpl(
          client: null,
          config: config,
          auth: auth,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if configReader is null', () {
      expect(
        () => ResumeRemoteDataSourceImpl(
          client: client,
          config: null,
          auth: auth,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should return assert error if auth is null', () {
      expect(
        () => ResumeRemoteDataSourceImpl(
          client: client,
          config: config,
          auth: null,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });

  // test('''
  //   should perform a POST request on a URL
  //   being the end point and with application/json header
  //   ''', () async {
  //   //assign
  //   setUpHTTPCLient200();

  //   //act
  //   await sut.updateResume(model: ResumeTestConstant.RESUME_DATA_NULL);

  //   //assert
  //   verify(client.post(
  //     ResumeApiEndpoints.updateProfile,
  //     headers: headers,
  //     body: json.encode(ResumeTestConstant.RESUME_DATA_NULL.toJson()),
  //   ));
  // });

  // test('''
  //   should return a Unit when endpoint return data
  //   if the network status is 200.
  //   ''', () async {
  //   //assign
  //   setUpHTTPCLient200();
  //   //act
  //   final result =
  //       await sut.updateResume(model: ResumeTestConstant.RESUME_DATA_NULL);
  //   //assert
  //   expect(result, equals(isA<Unit>()));
  // });

  // test('''
  //   should throw a Server Exception
  //   if the status is not 200.
  //   ''', () async {
  //   //assign
  //   setUpHTTPCLient500();
  //   //act
  //   final call = sut.updateResume;
  //   //assert
  //   expect(() => call(model: ResumeTestConstant.RESUME_DATA_NULL),
  //       throwsA(isA<ServerException>()));
  // });

  // test('''
  //   should throw a Server Exception
  //   if the client throws an Exception
  //   ''', () async {
  //   //assign
  //   setUpHTTPCLientThrowException();
  //   //act
  //   final call = sut.updateResume;
  //   //assert
  //   expect(() => call(model: ResumeTestConstant.RESUME_DATA_NULL),
  //       throwsA(isA<ServerException>()));
  // });
}
