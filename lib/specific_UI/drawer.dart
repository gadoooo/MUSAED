import 'package:flutter/material.dart';
import 'package:musaed_user2/screens/locations.dart';

import '../screens/help.dart';
import '../screens/mycars.dart';
import '../screens/seetings.dart';
import '../utils/ThemeColors.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: AppTheme.whiteColor,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/sidebar-background.png"),
            ),
            Positioned(
                top: 259,
                left: 16,
                child: SizedBox(
                  width: 262,
                  height: 500,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Image.asset("assets/images/person2.png"),
                        title: Text(
                          "حسابى",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/car2.png"),
                        title: Text(
                          "سياراتى",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mycars()));
                        },
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/location2.png"),
                        title: Text(
                          "مواقعي",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Locations()));
                        },
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/star-line2.png"),
                        title: Text(
                          "تقيماتي",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/card2.png"),
                        title: Text(
                          "إدارة بطاقاتى",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/help2.png"),
                        title: Text(
                          "الدعم والمساعدة",
                          style: TextStyle(
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.w700,
                            color: AppTheme.blackFontColor,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Help()));
                        },
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2, // Line thickness
                          color: Color.fromRGBO(217, 217, 217, 1), // Line color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: ListTile(
                          leading: Image.asset("assets/images/settings2.png"),
                          title: Text(
                            "الإعدادات",
                            style: TextStyle(
                              fontFamily: "Tajawal",
                              fontWeight: FontWeight.w700,
                              color: AppTheme.blackFontColor,
                              fontSize: 16,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
