import 'package:flutter/material.dart';
import 'package:musaed_user2/specific_UI/button.dart';
import 'package:musaed_user2/specific_UI/head.dart';
import 'package:musaed_user2/specific_UI/headContent.dart';
import 'package:musaed_user2/utils/ThemeColors.dart';
import 'package:musaed_user2/utils/select_language.dart';

import '../specific_UI/drawer.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedValue = 1;
  String language = "ar";
  @override
  void initState() {
    super.initState();
    language = SelectLanguage.getLanguage();
  }

  List<LocationsData> LCData = [
    LocationsData(
        LCheader: "المنزل",
        LCflag: "assets/images/flag.png",
        LCnumber: "212 Khalid Ibn Al Walid St ,Riyadh ,Saudi Arabia4"),
    LocationsData(
        LCheader: "العمل",
        LCflag: "assets/images/flag.png",
        LCnumber: "212 Khalid Ibn Al Walid St ,Riyadh ,Saudi Arabia1"),
  ];

  Widget returnUi(l) {
    if (l == 0) {
      return Positioned(
        top: 327,
        left: 48.5,
        child: Container(
          width: 264,
          child: Column(
            children: [
              Container(
                width: 264,
                height: 147.84,
                child: Image.asset("assets/images/locations_empty.png"),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 251,
                height: 17,
                child: Text(
                  "لا يوجد  اى عناوين ، من فضلك أضف عنوانك",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w500,
                      color: AppTheme.title),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Positioned(
        top: 244,
        left: 0,
        child: SizedBox(
          width: 360,
          height: MediaQuery.of(context).size.height - 244,
          child: Column(
            children: [
              Container(
                width: 360,
                height: 61,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "العنوان",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: "Tajawal",
                            color: AppTheme.buttonBacKgroundColor,
                          ),
                        ),
                        Image.asset("assets/images/location_Addlocation.png"),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "الرجاء اختيار عنوان لاستعراض الخدمات المتاحه فى موقعك.",
                      style: TextStyle(
                        color: AppTheme.addCarText,
                        fontFamily: "Tajawal",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
              Divider(
                thickness: 2, // Line thickness
                color: Color.fromRGBO(237, 234, 234, 1), // Line color
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: l,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Container(
                            width: 328,
                            decoration: BoxDecoration(
                                color: AppTheme.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Directionality(
                              textDirection: language == "ar"
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              child: ListTile(
                                leading: Radio<int>(
                                  value: index + 1,
                                  groupValue:
                                      _selectedValue, // Ensure _selectedValue is properly defined
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = value!;
                                    });
                                  },
                                  activeColor: AppTheme.radioChecked,
                                ),
                                title: Text(
                                  LCData[index]
                                      .LCheader, // Make sure MCData is properly defined
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: "Tajawal",
                                    color: AppTheme.blackFontColor,
                                  ),
                                ),
                                subtitle: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/location_flag.png"),
                                    SizedBox(width: 1),
                                    Text(
                                      LCData[index]
                                          .LCnumber, // Ensure MCData[index].MCnumber is properly populated
                                      style: TextStyle(
                                        color: AppTheme.addCarText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Tajawal",
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: SizedBox(
                                  width: 40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 14,
                                        height: 14.01,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/edit.png"),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                      SizedBox(width: 11),
                                      Container(
                                        width: 14,
                                        height: 14.01,
                                        child: IconButton(
                                          onPressed: () =>
                                              showOverlayScreen(context, index),
                                          icon: Image.asset(
                                              "assets/images/car_delete.png"),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  void showOverlayScreen(BuildContext context, int i) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing when tapping outside
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            width: 322,
            height: 160,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 23),
                  child: Text(
                    "هل ترغب حقاًفي حذف هذا الموقع ؟",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Tajawal",
                      color: AppTheme.blackFontColor,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: SizedBox(
                    width: 271,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 127,
                          height: 40,
                          child: Button1(
                            text: "الغاء",
                            textColor: "orange",
                            borderColor: "orange",
                            buttonColor: "white",
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 127,
                          height: 40,
                          child: Button1(
                            text: "حذف الموقع",
                            textColor: "white",
                            borderColor: "trans",
                            buttonColor: "orange",
                            removeCar: (i) {
                              setState(() {
                                LCData.removeAt(i);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
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
              text: "سياراتى", scaffoldKey: _scaffoldKey, prePage: Locations()),
          returnUi(LCData.length),
          Positioned(
            top: 710,
            left: 16,
            right: 16,
            child: Container(
              width: 328,
              height: 46,
              child: Button1(
                  text: "اضف عنوان جديد",
                  textColor: "white",
                  borderColor: "trans",
                  buttonColor: "orange",
                  nextPage: Locations()),
            ),
          ),
        ],
      ),
    );
  }
}

class LocationsData {
  final LCheader;
  final LCflag;
  final LCnumber;
  LocationsData(
      {required this.LCheader, required this.LCflag, required this.LCnumber});
}
