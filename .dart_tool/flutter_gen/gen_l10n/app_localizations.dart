import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get student;

  /// No description provided for @desc.
  ///
  /// In en, this message translates to:
  /// **'Software Engineering Student | Data Science Student | Indie Game Developer'**
  String get desc;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @langauge.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get langauge;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get light;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select a language'**
  String get select;

  /// No description provided for @date1.
  ///
  /// In en, this message translates to:
  /// **'2019 - Present   IIT SFAX'**
  String get date1;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experiences'**
  String get experience;

  /// No description provided for @date3.
  ///
  /// In en, this message translates to:
  /// **'2019   Monji Slim Highschool SFAX'**
  String get date3;

  /// No description provided for @text1.
  ///
  /// In en, this message translates to:
  /// **'Degree in Computer Engineering (specializing in Software Engineering and Business Intelligence)'**
  String get text1;

  /// No description provided for @text2.
  ///
  /// In en, this message translates to:
  /// **'National Bachelor\'s Degree in Computer Science (specializing in Big Data and Data Analysis)'**
  String get text2;

  /// No description provided for @text3.
  ///
  /// In en, this message translates to:
  /// **'High school degree in Experimental Sciences'**
  String get text3;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @exp1.
  ///
  /// In en, this message translates to:
  /// **'End of Year Project (EYP)'**
  String get exp1;

  /// No description provided for @exp1date.
  ///
  /// In en, this message translates to:
  /// **'Feb 2024 - Present'**
  String get exp1date;

  /// No description provided for @exp1text.
  ///
  /// In en, this message translates to:
  /// **'Automatic synthesis of video excerpts from online courses'**
  String get exp1text;

  /// No description provided for @exp2.
  ///
  /// In en, this message translates to:
  /// **'Professional Life Initiation Internship'**
  String get exp2;

  /// No description provided for @exp2date.
  ///
  /// In en, this message translates to:
  /// **'Jul - Sept 2023'**
  String get exp2date;

  /// No description provided for @exp2text.
  ///
  /// In en, this message translates to:
  /// **'Design and Implementation of a web platform for the Birdnotes CRM scraping application'**
  String get exp2text;

  /// No description provided for @exp3.
  ///
  /// In en, this message translates to:
  /// **'Final Year Project (FYP)'**
  String get exp3;

  /// No description provided for @exp3date.
  ///
  /// In en, this message translates to:
  /// **'Feb - Jun 2022'**
  String get exp3date;

  /// No description provided for @exp3text.
  ///
  /// In en, this message translates to:
  /// **'Implementation of a web scraper for retrieving medical prospects data in Tunisia'**
  String get exp3text;

  /// No description provided for @exp4.
  ///
  /// In en, this message translates to:
  /// **'Summer Internship Project'**
  String get exp4;

  /// No description provided for @exp4date.
  ///
  /// In en, this message translates to:
  /// **'Jun - Aug 2021'**
  String get exp4date;

  /// No description provided for @exp4text.
  ///
  /// In en, this message translates to:
  /// **'Development of a machine and room reservation application for Djagora FapLab'**
  String get exp4text;

  /// No description provided for @cert2.
  ///
  /// In en, this message translates to:
  /// **'French Language Studies Diploma (DELF B2)'**
  String get cert2;

  /// No description provided for @cert2date.
  ///
  /// In en, this message translates to:
  /// **'July 2023'**
  String get cert2date;

  /// No description provided for @cert3date.
  ///
  /// In en, this message translates to:
  /// **'June 2023'**
  String get cert3date;

  /// No description provided for @skill.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skill;

  /// No description provided for @native.
  ///
  /// In en, this message translates to:
  /// **'Native'**
  String get native;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Date and place of birth'**
  String get birthday;

  /// No description provided for @dateBirth.
  ///
  /// In en, this message translates to:
  /// **'10/21/2000 Sfax,Tunisia'**
  String get dateBirth;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
