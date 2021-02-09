import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_driver/flutter_driver.dart';

void main() {
  group('some test', () async {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
  });
}
