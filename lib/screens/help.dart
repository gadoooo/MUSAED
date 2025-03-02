import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:musaed_user2/screens/faq.dart';
import 'package:musaed_user2/specific_UI/drawer.dart';
import 'package:musaed_user2/specific_UI/head.dart';
import 'package:musaed_user2/specific_UI/headContent.dart';
import 'package:musaed_user2/utils/ThemeColors.dart';
import 'package:musaed_user2/utils/select_language.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
              text: "Support_and_assistance".tr(),
              scaffoldKey: _scaffoldKey,
              prePage: Help()),
          Positioned(
            top: 238,
            child: SizedBox(
              width: 360,
              height: 500,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 328,
                      height: 108,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        "لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.",
                        textDirection: language == "ar"
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                        style: TextStyle(
                            fontFamily: "Tajawal",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppTheme.blackFontColor),
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 315,
                    color: AppTheme.appBackGroundColor,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 336,
                            height: 70,
                            decoration: BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Directionality(
                              textDirection: language == "ar"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              child: ListTile(
                                leading: Image.asset("assets/images/FAQ.png"),
                                title: Text(
                                  "Frequently_asked_questions".tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Tajawal",
                                      color: AppTheme.blackFontColor),
                                ),
                                subtitle: Text(
                                  "لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.",
                                  textDirection: language == "ar"
                                      ? TextDirection.rtl
                                      : TextDirection.ltr,
                                  style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.blackFontColor),
                                ),
                                trailing:
                                    Image.asset("assets/images/arrow-left.png"),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FAQ()));
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
                            height: 70,
                            decoration: BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Directionality(
                              textDirection: language == "ar"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              child: ListTile(
                                leading: Image.asset("assets/images/chat.png"),
                                title: Text(
                                  "Chats".tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Tajawal",
                                      color: AppTheme.blackFontColor),
                                ),
                                subtitle: Text(
                                  "لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.",
                                  textDirection: language == "ar"
                                      ? TextDirection.rtl
                                      : TextDirection.ltr,
                                  style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.blackFontColor),
                                ),
                                trailing:
                                    Image.asset("assets/images/arrow-left.png"),
                                onTap: () {},
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
                            height: 70,
                            decoration: BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Directionality(
                              textDirection: language == "ar"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              child: ListTile(
                                leading: Image.asset("assets/images/call.png"),
                                title: Text(
                                  "Contact_Support".tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Tajawal",
                                      color: AppTheme.blackFontColor),
                                ),
                                subtitle: Text(
                                  "لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.",
                                  textDirection: language == "ar"
                                      ? TextDirection.rtl
                                      : TextDirection.ltr,
                                  style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.blackFontColor),
                                ),
                                trailing:
                                    Image.asset("assets/images/arrow-left.png"),
                                onTap: () {},
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
                            height: 70,
                            decoration: BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Directionality(
                              textDirection: language == "ar"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              child: ListTile(
                                leading: Image.asset("assets/images/laws.png"),
                                title: Text(
                                  "Rules".tr(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "Tajawal",
                                      color: AppTheme.blackFontColor),
                                ),
                                subtitle: Text(
                                  "لوريم إيبسوم دولور الجلوس أميت كونسيكتور. Euismod mi nec placerat gravida.",
                                  textDirection: language == "ar"
                                      ? TextDirection.rtl
                                      : TextDirection.ltr,
                                  style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppTheme.blackFontColor),
                                ),
                                trailing:
                                    Image.asset("assets/images/arrow-left.png"),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
