import 'package:form_validator/form_validator.dart';
import 'package:kana_kit/kana_kit.dart';

class Validator {
  static String? isValidEmail(String? email) {
    return (ValidationBuilder()
        .email("Email address is not valid.")
        .build())(email);
  }

  static String? isValidPassword(String? password) {
    return (ValidationBuilder()
        .minLength(8, "Password should be atleast 8 character long.")
        .build())(password);
  }

  static String? isNotEmptyAndMinimumCharacterLong(String? name,
      {String? placeholder, int minChar = 2}) {
    return (ValidationBuilder()
        .minLength(minChar,
            "${placeholder ?? "This field"} should be atleast $minChar character long.")
        .build())(name);
  }

  static String? isNotEmpty(String? name, {String? placeholder}) {
    return (ValidationBuilder()
        .minLength(1, "${placeholder ?? "This field"} cannot be empty")
        .build())(name);
  }

  static String? isNotKatakana(String? name, {String? placeholder}) {
    if (name == null) {
      return null;
    }

    if (name.isEmpty) {
      return null;
    }
    if (!(const KanaKit()
        .isKatakana(name.replaceAll(' ', '').replaceAll('　', '')))) {
      return "${placeholder ?? "This field"} should be in Katakana";
    }
    return null;
  }
}
