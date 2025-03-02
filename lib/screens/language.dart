import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:musaed_user2/screens/seetings.dart';
import 'package:musaed_user2/specific_UI/head.dart';
import 'package:musaed_user2/specific_UI/headContent.dart';
import 'package:musaed_user2/utils/ThemeColors.dart';
import 'package:musaed_user2/utils/select_language.dart';

import '../specific_UI/drawer.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int check = 0;
  String language = "ar";
  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
  }

  Widget? returnCheck(i) {
    if (check == i) {
      return Image.asset("assets/images/check.png");
    } else {
      return Text("");
    }
  }

  List<LanguageData> LData = [
    LanguageData(
        Lheader: "العربيه", Lbody: "العربية (المملكة العربية السعودية)"),
    LanguageData(Lheader: "English", Lbody: "الانجليزية"),
    LanguageData(
        Lheader: "English (US)", Lbody: "الانجليزية (الولايات المتحدة)")
  ];
  void _changeLanguage(String la) async {
    await SelectLanguage.setLanguage(la);
    if (la == "ar") {
      context.setLocale(Locale('ar', 'EG'));
    } else {
      if (la == "en") {
        context.setLocale(Locale('en', 'US'));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer1(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppTheme.appBackGroundColor,
          ),
          Head1(check: false),
          HeadContent1(
              text: "الاعدادات",
              scaffoldKey: _scaffoldKey,
              prePage: Settings()),
          Positioned(
            top: 256,
            child: SizedBox(
              width: 351,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: LData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 319,
                          height: 35,
                          child: Directionality(
                            textDirection: language == "ar"
                                ? intl.TextDirection.rtl
                                : intl.TextDirection.ltr,
                            child: ListTile(
                              title: Text(
                                LData[index].Lheader,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Tajawal",
                                    fontSize: 16,
                                    color: AppTheme.blackFontColor),
                              ),
                              subtitle: Text(
                                LData[index].Lbody,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Tajawal",
                                    fontSize: 10,
                                    color: AppTheme.languageSubtilite),
                              ),
                              trailing: returnCheck(index),
                              onTap: () {
                                setState(() {
                                  check = index;
                                });
                                if (LData[index].Lheader == "العربيه") {
                                  _changeLanguage("ar");
                                } else {
                                  if (LData[index].Lheader == "English" ||
                                      LData[index].Lheader == "English (US)") {
                                    _changeLanguage("en");
                                  }
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      if (index != LData.length - 1)
                        SizedBox(
                          height: 24,
                        )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageData {
  final Lheader;
  final Lbody;
  LanguageData({required this.Lheader, required this.Lbody});
}
