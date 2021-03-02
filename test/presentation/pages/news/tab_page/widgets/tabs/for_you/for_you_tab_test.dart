import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
// import 'package:network_image_mock/network_image_mock.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/news/tab_page/tabs/for_you/for_you_tab.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockNewsBloc extends Mock implements NewsBloc {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ForYouNewsTab _widget;
  // MockBuildContext _context;

  // Widget makeTestableWidgets({Widget child}) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: BlocProvider(
  //         create: (_context) => getIt<NewsBloc>(),
  //         child: child,
  //       ),
  //       // body: child,
  //     ),
  //   );
  // }

  setUp(() {
    // _context = MockBuildContext();
    configureInjection(injectable.Environment.test);
    _widget = ForYouNewsTab();
  });

  test('ForYouNewsTab is sub class of StatelessWidget', () {
    expect(_widget, isA<StatelessWidget>());
  });

  // testWidgets('should return sized box for initial state',
  //     (WidgetTester tester) async {
  //   mockNetworkImagesFor(() async {
  //     await tester.pumpWidget(makeTestableWidgets(child: _widget));
  //     final sizedBoxFind = find.byType(SizedBox);
  //     expect(true, true);
  //   });
  // });
}
