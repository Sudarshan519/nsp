import 'dart:convert';

// String errorMessageFromServer(String message) {
//   try {
//     final data = json.decode(message) as Map<String, dynamic>;
//     final error = data["error"] as Map<String, dynamic>;
//     final errorKey = error.keys.toList()[0];
//     try {
//       final actualError = error[errorKey] as List;
//       return actualError[0] as String;
//     } on TypeError {
//       final actualError = error[errorKey] as String;
//       return actualError;
//     }
//   } on TypeError {
//     final data = json.decode(message) as Map<String, dynamic>;
//     final error = data["error"] as String;
//     return error ?? "Something went wrong";
//   } on NoSuchMethodError {
//     final data = json.decode(message) as Map<String, dynamic>;
//     final error = data["error"] as String;
//     return error ?? "Something went wrong";
//   } catch (ex) {
//     return ex.toString();
//   }
// }

String errorMessageFromServer(String message) {
  try {
// convert the response body to a json map
    final data = json.decode(message) as Map<String, dynamic>;

    // search for a error key which is another json object
    final errorJson = data["error"] as Map<String, dynamic>;

    // get first key of the json error
    final errorKey = errorJson.keys.toList()[0];

    // get first error List
    final actualError = errorJson[errorKey] as List;

    return actualError[0] as String;
  } catch (ex) {
    return null;
  }
}
