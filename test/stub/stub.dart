import 'dart:io';

import 'package:flutter/foundation.dart';

String stub({
  @required String path,
  @required String name,
}) =>
    File('test/stub/$path/$name.json').readAsStringSync();
