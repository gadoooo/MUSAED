import 'package:flutter/material.dart';

class HeadContent1 extends StatelessWidget {
  final String text;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget prePage;
  const HeadContent1(
      {super.key,
      required this.text,
      required this.scaffoldKey,
      required this.prePage});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 46,
      right: 16,
      left: 16,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.notifications_none),
                  color: Colors.white,
                  iconSize: 24,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: "Tajawal"),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => prePage));
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.white,
                  iconSize: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
