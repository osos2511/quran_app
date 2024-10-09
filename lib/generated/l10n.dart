// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `islami`
  String get app_title {
    return Intl.message(
      'islami',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Chapter Name`
  String get chapter_name {
    return Intl.message(
      'Chapter Name',
      name: 'chapter_name',
      desc: '',
      args: [],
    );
  }

  /// `Verses Number`
  String get verses_number {
    return Intl.message(
      'Verses Number',
      name: 'verses_number',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'hadith title' key

  /// `Quran`
  String get quran_tab {
    return Intl.message(
      'Quran',
      name: 'quran_tab',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadith_tab {
    return Intl.message(
      'Hadith',
      name: 'hadith_tab',
      desc: '',
      args: [],
    );
  }

  /// `Tasbeh`
  String get tasbeh_tab {
    return Intl.message(
      'Tasbeh',
      name: 'tasbeh_tab',
      desc: '',
      args: [],
    );
  }

  /// `Radio`
  String get radio_tab {
    return Intl.message(
      'Radio',
      name: 'radio_tab',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get setting_tab {
    return Intl.message(
      'Settings',
      name: 'setting_tab',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
