import 'package:form_validator/form_validator.dart';

class Validator {
  static String isValidEmail(String email) {
    return (ValidationBuilder()
        .email("Email address is not valid.")
        .build())(email);
  }

  static String isValidPassword(String password) {
    return (ValidationBuilder()
        .minLength(6, "Password should be atleast 6 character long.")
        .build())(password);
  }

  static String isNotEmptyAndMinimum3CharacterLong(String name,
      {String placeholder}) {
    return (ValidationBuilder()
        .minLength(3,
            "${placeholder ?? "This field"} should be atleast 3 character long.")
        .build())(name);
  }
}
