import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:musaed_user2/screens/terms&conditions.dart';
import 'package:musaed_user2/utils/ThemeColors.dart';
import 'package:musaed_user2/utils/select_language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalizeAndTranslate.init(
    assetLoader: const AssetLoaderRootBundleJson(
        'assets/lang/'), // <-- change the path of the translation files
    supportedLocales: <Locale>[
      Locale('ar', 'EG'),
      Locale('en', 'US')
    ], // <-- or  supportedLanguageCodes: <String>['ar', 'en'],
    defaultType:
        LocalizationDefaultType.asDefined, // <-- change the default type
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: "Tajawal",
              color: AppTheme.whiteColor),
          displayMedium: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "Tajawal"),
          displaySmall: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, fontFamily: "Tajawal"),
          titleSmall: const TextStyle(
              fontSize: 10,
              fontFamily: "Tajawal",
              fontWeight: FontWeight.w500,
              color: AppTheme.titleDateColor),
        ),
      ),
      home: const Terms(),
    );
  }
}
