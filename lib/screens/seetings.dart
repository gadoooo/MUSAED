import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:musaed_user2/screens/language.dart';
import 'package:musaed_user2/screens/phone_number.dart';
import 'package:musaed_user2/specific_UI/head.dart';
import 'package:musaed_user2/specific_UI/headContent.dart';
import 'package:musaed_user2/utils/ThemeColors.dart';
import 'package:musaed_user2/utils/select_language.dart';

import '../specific_UI/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String language = "ar";
  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
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
              text: "Settings".tr(),
              scaffoldKey: _scaffoldKey,
              prePage: Settings()),
          Positioned(
            top: 225,
            child: Container(
              width: 360,
              height: 567,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading:
                              Image.asset("assets/images/person-settings.png"),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mobile_number".tr(),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Tajawal",
                                    fontWeight: FontWeight.w700,
                                    color: AppTheme.blackFontColor),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "23*******",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Tajawal",
                                        fontWeight: FontWeight.w400,
                                        color: AppTheme.title),
                                  ),
                                  Text(
                                    "996",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Tajawal",
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.title),
                                  ),
                                  Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Tajawal",
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.title),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Image.asset("assets/images/arrow-left.png"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Phone()));
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading: Image.asset("assets/images/language.png"),
                          title: Text(
                            "Language".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.blackFontColor),
                          ),
                          trailing: Image.asset("assets/images/arrow-left.png"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading: Image.asset("assets/images/share.png"),
                          title: Text(
                            "Share_app".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.blackFontColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading: Image.asset("assets/images/help.png"),
                          title: Text(
                            "Support_and_assistance".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.blackFontColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading: Image.asset("assets/images/terms.png"),
                          title: Text(
                            "Terms_and_Conditions".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.blackFontColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading: Image.asset("assets/images/log_out.png"),
                          title: Text(
                            "Sign_out".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.blackFontColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 336,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: language=="ar"?TextDirection.rtl:TextDirection.ltr,
                        child: ListTile(
                          leading:
                              Image.asset("assets/images/account-delete.png"),
                          title: Text(
                            "Delete_my_account".tr(),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.w700,
                                color: AppTheme.accountDelete),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
