import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class ConfigReader {
  Future<void> initialize();
  String get baseURL;
  String get resumeBaseUrl;
  String get apiPath;
  bool get isDebugApp;
}

@Singleton(as: ConfigReader)
class ConfigReaderImpl implements ConfigReader {
  Map<String, dynamic> _config;

  @override
  String get baseURL {
    if (_config == null) {
      return "";
    }
    return _config['base_url'] as String ?? "";
  }

  @override
  String get resumeBaseUrl {
    if (_config == null) {
      return "";
    }
    return _config['resume_base_url'] as String ?? "";
  }

  @override
  String get apiPath {
    if (_config == null) {
      return "";
    }
    return _config['api_path'] as String ?? "";
  }

  @override
  bool get isDebugApp {
    if (_config == null) {
      return true;
    }
    return _config['is_debug'] as bool ?? true;
  }

  @override
  Future<void> initialize() async {
    var configString = "";
    var dir = Directory.current.path;
    if (dir.endsWith('/test')) {
      dir = dir.replaceAll('/test', '');
      configString = File('$dir/config/app_config.json').readAsStringSync();
    } else {
      configString = await rootBundle.loadString('config/app_config.json');
    }
    _config = json.decode(configString) as Map<String, dynamic>;
  }
}
