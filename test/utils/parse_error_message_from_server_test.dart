import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_app/utils/parse_error_message_from_server.dart';

import '../stub/stub.dart';

void main() {
  test("should return string when error key contain a string", () {
    final errorString = stub(path: "errors", name: "login_error");

    //act
    final value = errorMessageFromServer(errorString);

    expect(value, "Credentials does not match!");
  });
}
