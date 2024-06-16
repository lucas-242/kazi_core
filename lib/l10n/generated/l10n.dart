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

class CoreLocalizations {
  CoreLocalizations();

  static CoreLocalizations? _current;

  static CoreLocalizations get current {
    assert(_current != null,
        'No instance of CoreLocalizations was loaded. Try to initialize the CoreLocalizations delegate before accessing CoreLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<CoreLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = CoreLocalizations();
      CoreLocalizations._current = instance;

      return instance;
    });
  }

  static CoreLocalizations of(BuildContext context) {
    final instance = CoreLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of CoreLocalizations present in the widget tree. Did you add CoreLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static CoreLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<CoreLocalizations>(context, CoreLocalizations);
  }

  /// `Access Denied`
  String get errorAccessDenied {
    return Intl.message(
      'Access Denied',
      name: 'errorAccessDenied',
      desc: '',
      args: [],
    );
  }

  /// `Url not found.`
  String get errorNotFound {
    return Intl.message(
      'Url not found.',
      name: 'errorNotFound',
      desc: '',
      args: [],
    );
  }

  /// `The server took a long time to respond. Please try again later or contact us.`
  String get errorTimeout {
    return Intl.message(
      'The server took a long time to respond. Please try again later or contact us.',
      name: 'errorTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Your login expired. Please, login and try again.`
  String get errorTokenExpired {
    return Intl.message(
      'Your login expired. Please, login and try again.',
      name: 'errorTokenExpired',
      desc: '',
      args: [],
    );
  }

  /// `An unknown exception occurred.`
  String get errorUnknowError {
    return Intl.message(
      'An unknown exception occurred.',
      name: 'errorUnknowError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<CoreLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<CoreLocalizations> load(Locale locale) =>
      CoreLocalizations.load(locale);
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
