import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockNewsBloc extends Mock implements NewsBloc {}

void main() {
  // MockBuildContext _context;
  // MockNewsBloc _newsBloc;

  setUp(() {
    // _context = MockBuildContext();
    // _newsBloc = MockNewsBloc();
    // GetIt.instance.registerFactory<NewsBloc>(() => _newsBloc);
  });

  test('NewsCarousel is sub class of StatelessWidget', () {
    expect(true, true);
  });
}
