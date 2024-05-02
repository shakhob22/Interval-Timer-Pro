import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'uz'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? uzText = '',
  }) =>
      [enText, uzText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'vrsu119w': {
      'en': 'Interval name',
      'uz': 'Interval nomi',
    },
    'qf1cwyb0': {
      'en': 'Enter interval name...',
      'uz': 'Interval nomini kiriting...',
    },
    'ny9nm7ze': {
      'en': 'Add timer',
      'uz': 'Taymer qo\'shing',
    },
    'rkvf18jj': {
      'en': 'Interval Timer Pro',
      'uz': 'Interval Timer Pro',
    },
    '1b1r7f0o': {
      'en': 'Home',
      'uz': 'Uy',
    },
  },
  // EditPage
  {
    '900rlq23': {
      'en': 'Page Title',
      'uz': 'Sahifa sarlavhasi',
    },
    'tl7n93ch': {
      'en': 'Button',
      'uz': 'Tugma',
    },
    'mnbra314': {
      'en': 'Button',
      'uz': 'Tugma',
    },
    '2f2s2i89': {
      'en': 'Home',
      'uz': 'Uy',
    },
  },
  // MinuteDialog
  {
    '459ri7gc': {
      'en': 'Set minute',
      'uz': 'Daqiqani belgilang',
    },
    'ynuw3i3l': {
      'en': 'Enter minute...',
      'uz': 'Daqiqa kiriting...',
    },
    '88pfuh51': {
      'en': 'Cancel',
      'uz': 'Bekor qilish',
    },
    '9wuyvc40': {
      'en': 'Confirm',
      'uz': 'Tasdiqlang',
    },
  },
  // Miscellaneous
  {
    '1xwxdmyw': {
      'en': '',
      'uz': '',
    },
    'p7p9piqp': {
      'en': '',
      'uz': '',
    },
    '72jm89fs': {
      'en': '',
      'uz': '',
    },
    'frz9u3kk': {
      'en': '',
      'uz': '',
    },
    '2kg6cilk': {
      'en': '',
      'uz': '',
    },
    'bjk0p6zp': {
      'en': '',
      'uz': '',
    },
    'ftu63eb4': {
      'en': '',
      'uz': '',
    },
    '226nkgj4': {
      'en': '',
      'uz': '',
    },
    '7pk0vhqm': {
      'en': '',
      'uz': '',
    },
    '1drvvn3x': {
      'en': '',
      'uz': '',
    },
    'ddwktgmg': {
      'en': '',
      'uz': '',
    },
    'me1hx7f0': {
      'en': '',
      'uz': '',
    },
    'h3ha480w': {
      'en': '',
      'uz': '',
    },
    '2z0qfrkx': {
      'en': '',
      'uz': '',
    },
    'xu0hj1w4': {
      'en': '',
      'uz': '',
    },
    '0bztafzb': {
      'en': '',
      'uz': '',
    },
    'qdy4z0je': {
      'en': '',
      'uz': '',
    },
    'p59b6f85': {
      'en': '',
      'uz': '',
    },
    'rfz3nob7': {
      'en': '',
      'uz': '',
    },
    'qr7rmzl3': {
      'en': '',
      'uz': '',
    },
    'th5c85u3': {
      'en': '',
      'uz': '',
    },
    '0fnwg7ro': {
      'en': '',
      'uz': '',
    },
    'r380a026': {
      'en': '',
      'uz': '',
    },
    '3s3y5fqu': {
      'en': '',
      'uz': '',
    },
    'i49o5c7q': {
      'en': '',
      'uz': '',
    },
  },
].reduce((a, b) => a..addAll(b));
