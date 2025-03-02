import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:musaed_user2/screens/login.dart';
import 'package:musaed_user2/screens/seetings.dart';
import 'package:musaed_user2/specific_UI/button.dart';
import 'package:musaed_user2/utils/select_language.dart';

import '../specific_UI/drawer.dart';
import '../specific_UI/head.dart';
import '../specific_UI/headContent.dart';
import '../utils/ThemeColors.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController _controller = TextEditingController();
  bool errorCheck = false;
  String language = "ar";
  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
  }

  Future<Widget> returnUI(bool e) async {
    TextEditingValue v = await _controller.value;
    if (v.text == "") {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16, 5, 16, 45),
        child: Container(
            width: 332,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Phone_must".tr(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Tajawal",
                    color: AppTheme.phoneChangeText,
                  ),
                  textDirection:
                      language == "ar" ? TextDirection.rtl : TextDirection.ltr,
                ),
                Image.asset("assets/images/error_check2.png"),
              ],
            )),
      );
    } else {
      if (e == true) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 45),
          child: Container(
            width: 332,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "phone_incorrect".tr(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Tajawal",
                    color: AppTheme.phoneChangeerror,
                  ),
                  textDirection:
                      language == "ar" ? TextDirection.rtl : TextDirection.ltr,
                ),
                Image.asset("assets/images/error_check.png"),
              ],
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 45),
          child: Container(
              width: 332,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Valid_phone".tr(),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Tajawal",
                      color: AppTheme.phoneBorder,
                    ),
                    textDirection: language == "ar"
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                  ),
                  Image.asset("assets/images/error_check3.png"),
                ],
              )),
        );
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
              text: "Settings".tr(),
              scaffoldKey: _scaffoldKey,
              prePage: Settings()),
          Positioned(
            top: 269,
            child: Container(
              width: 332,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Container(
                      width: 332,
                      child: Text(
                        "تغير رقم الجوال",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Tajawal",
                          color: AppTheme.blackFontColor,
                        ),
                        textDirection: language == "ar"
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 16, 10),
                    child: Container(
                      width: 332,
                      child: Text(
                        "رقم الجوال *",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Tajawal",
                          color: AppTheme.phoneChangeText2,
                        ),
                        textDirection: language == "ar"
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 5),
                    child: SizedBox(
                      width: 328,
                      height: 80,
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          prefix: Text(
                            "+996",
                            style: TextStyle(
                              fontFamily: "Tajawal",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: AppTheme.phoneChangeInputText,
                            ),
                          ),
                          hintText: '5xxxxxxxx',
                          hintStyle: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppTheme.phoneChangeText,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: errorCheck
                                    ? AppTheme.phoneChangeerror
                                    : AppTheme.phoneBorder,
                                width: 2),
                          ),
                        ),
                        style: TextStyle(
                          color: AppTheme.phoneChangeInputText,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Tajawal",
                          fontSize: 12,
                        ),
                        maxLength: 9,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            if (value.startsWith("5")) {
                              setState(() {
                                errorCheck = false;
                              });
                            } else {
                              setState(() {
                                errorCheck = true;
                              });
                            }
                          } else {
                            setState(() {
                              errorCheck = true;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  FutureBuilder(
                    future: returnUI(errorCheck),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(); // Show loading
                      } else if (snapshot.hasError) {
                        return Text("Error: ${snapshot.error}"); // Handle error
                      } else {
                        return snapshot.data ??
                            SizedBox(); // Show fetched widget
                      }
                    },
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 533,
            left: 16,
            right: 16,
            child: Container(
              width: 328,
              height: 48,
              child: Button1(
                text: "التالى",
                textColor: "white",
                borderColor: "trans",
                buttonColor: "orange",
                ch: errorCheck,
                nextPage: Login(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
