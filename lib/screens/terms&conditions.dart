import "package:flutter/material.dart";
import "package:localize_and_translate/localize_and_translate.dart";
import "package:musaed_user2/specific_UI/button.dart";
import "package:musaed_user2/specific_UI/head.dart";
import "package:musaed_user2/specific_UI/headContent.dart";
import "package:musaed_user2/utils/ThemeColors.dart";
import "package:musaed_user2/utils/select_language.dart";

import "../specific_UI/drawer.dart";

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  String language = "ar";
  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
  }

  List<TermsData> TData = [
    TermsData(
        Theader: '${"Item".tr()} 1',
        Tbody:
            "لوريم إيبسوم دولور سيت أميت، consectetur adipiscing إيليت. Viverra condimentum eget Purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium Tellus neque. Ullamcorper hangingisse aenean leo pharetra in sit semper et. أميت quam placerat sem."),
    TermsData(
        Theader: '${"Item".tr()} 2',
        Tbody:
            "لوريم إيبسوم دولور سيت أميت، consectetur adipiscing إيليت. Viverra condimentum eget Purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium Tellus neque. Ullamcorper hangingisse aenean leo pharetra in sit semper et. أميت quam placerat sem."),
    TermsData(
        Theader: '${"Item".tr()} 3',
        Tbody:
            "لوريم إيبسوم دولور سيت أميت، consectetur adipiscing إيليت. Viverra condimentum eget Purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium Tellus neque. Ullamcorper hangingisse aenean leo pharetra in sit semper et. أميت quam placerat sem.")
  ];
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      key: _scaffoldKey,
      drawer: Drawer1(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppTheme.appBackGroundColor,
          ),
          Head1(check: true),
          HeadContent1(
              text: "الشروط و الاحكام",
              scaffoldKey: _scaffoldKey,
              prePage: Terms()),
          Positioned(
            top: 235,
            left: 4,
            right: 4,
            child: SizedBox(
              width: 352,
              height: 475,
              child: ListView.builder(
                itemCount: TData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          TData[index].Theader,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        SizedBox(height: 5),
                        Text(
                          TData[index].Tbody,
                          style: Theme.of(context).textTheme.displaySmall,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 710,
            left: 16,
            right: 16,
            child: Container(
              width: 328,
              height: 48,
              child: Button1(
                text: "موافقة و متابعة",
                textColor: "white",
                borderColor: "trans",
                buttonColor: "orange",
                nextPage: Terms(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TermsData {
  final Theader;
  final Tbody;

  TermsData({required this.Theader, required this.Tbody});
}
