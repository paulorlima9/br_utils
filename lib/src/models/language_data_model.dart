import 'package:flutter/material.dart';
import 'package:br_utils/br_utils.dart';

/// Model class for Locales
class LanguageDataModel {
  int? id;
  String? name;
  String? languageCode;
  String? fullLanguageCode;
  String? flag;
  String? subTitle;

  LanguageDataModel({
    this.id,
    this.name,
    this.languageCode,
    this.flag,
    this.fullLanguageCode,
    this.subTitle,
  });

  static List<String> languages() {
    List<String> list = [];

    localeLanguageList.forEach((element) {
      list.add(element.languageCode.validate());
    });

    return list;
  }

  static List<Locale> languageLocales() {
    List<Locale> list = [];

    localeLanguageList.forEach((element) {
      list.add(Locale(element.languageCode.validate(),
          element.fullLanguageCode.validate()));
    });

    return list;
  }
}

LanguageDataModel? getSelectedLanguageModel({String? defaultLanguage}) {
  LanguageDataModel? data;

  localeLanguageList.forEach((element) {
    if (element.languageCode ==
        getStringAsync(SELECTED_LANGUAGE_CODE,
            defaultValue: defaultLanguage ?? 'en')) {
      data = element;
    }
  });

  return data;
}
