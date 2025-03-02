import "package:flutter/material.dart";
import "package:localize_and_translate/localize_and_translate.dart";
import "package:musaed_user2/screens/help.dart";
import "package:musaed_user2/specific_UI/head.dart";
import "package:musaed_user2/specific_UI/headContent.dart";
import "package:musaed_user2/utils/ThemeColors.dart";
import "package:musaed_user2/utils/select_language.dart";

import "../specific_UI/drawer.dart";

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  String language = "ar";

  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
  }

  List<FAQDATA> FDATA = [
    FAQDATA(Fheader: "Does_regions".tr(), Fbody: "Does_regions_ans".tr()),
    FAQDATA(Fheader: "Will_services".tr(), Fbody: "Will_services_ans".tr()),
    FAQDATA(Fheader: "Will_services".tr(), Fbody: "Will_services_ans".tr()),
    FAQDATA(Fheader: "Will_services".tr(), Fbody: "Will_services_ans".tr()),
    FAQDATA(Fheader: "Will_services".tr(), Fbody: "Will_services_ans".tr())
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
              text: "الاسئله الشائعه",
              scaffoldKey: _scaffoldKey,
              prePage: Help()),
          Positioned(
            top: 238,
            child: Container(
              width: 360,
              padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
              child: Text(
                "الاسئلة الشائعة عى اسئلة تساعدك لتعرف اى معلومة سريعا بدون الحاجة الى دعم العملاء",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Tajawal",
                    fontSize: 12,
                    color: AppTheme.title),
                textDirection:
                    language == "ar" ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
          ),
          Positioned(
            top: 330,
            child: SizedBox(
              width: 360,
              height: 446,
              child: ListView.builder(
                  itemCount: FDATA.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 328,
                            height: 90,
                            decoration: BoxDecoration(
                              color: AppTheme.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                title: Text(
                                  FDATA[index].Fheader,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Tajawal",
                                      fontWeight: FontWeight.w700,
                                      color: AppTheme.blackFontColor),
                                ),
                                subtitle: Text(
                                  FDATA[index].Fbody,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Tajawal",
                                    fontSize: 11,
                                    color: Color.fromRGBO(74, 74, 74, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (index != FDATA.length - 1)
                          SizedBox(
                            height: 10,
                          ),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class FAQDATA {
  final Fheader;
  final Fbody;
  FAQDATA({required this.Fheader, required this.Fbody});
}
