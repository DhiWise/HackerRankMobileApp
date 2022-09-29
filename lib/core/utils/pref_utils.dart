import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setCsrf(String value) {
    return _sharedPreferences!.setString('csrf', value);
  }

  String getCsrf() {
    try {
      return _sharedPreferences!.getString('csrf') ?? '';
    } catch (e) {
      return '';
    }
  }

  String getCookie() {
    try {
      return _sharedPreferences!.getString('cookie') ?? "";
    } catch (e) {
      return '';
    }
  }

  Future<void> setCookie(String value) {
    return _sharedPreferences!.setString('cookie', value);
  }

  Future<void> setSlug(String value) {
    return _sharedPreferences!.setString('slug', value);
  }

  String getSlug() {
    try {
      return _sharedPreferences!.getString('slug') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setSkillSlug(String value) {
    return _sharedPreferences!.setString('skillSlug', value);
  }

  String getSkillSlug() {
    try {
      return _sharedPreferences!.getString('skillSlug') ?? '';
    } catch (e) {
      return '';
    }
  }
}
