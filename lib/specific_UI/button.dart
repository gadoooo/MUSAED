import 'package:flutter/material.dart';

import '../utils/ThemeColors.dart';

class Button1 extends StatefulWidget {
  final String text;
  final String textColor;
  final String borderColor;
  final String buttonColor;
  final Widget? nextPage;
  final Function(int)? removeCar;
  final bool? ch;
  const Button1(
      {super.key,
      required this.text,
      required this.textColor,
      required this.borderColor,
      required this.buttonColor,
      this.nextPage,
      this.removeCar,
      this.ch});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  Color? returnTextColor(tC) {
    if (tC == "white") {
      return AppTheme.whiteColor;
    } else {
      if (tC == "orange") {
        return AppTheme.buttonBacKgroundColor;
      }
    }
  }

  Color? returnButtonColor(bC) {
    if (bC == "white") {
      return AppTheme.whiteColor;
    } else {
      if (bC == "orange") {
        return AppTheme.buttonBacKgroundColor;
      }
    }
  }

  Color? returnBorderColor(boC) {
    if (boC == "trans") {
      return AppTheme.transColor;
    } else {
      if (boC == "orange") {
        return AppTheme.buttonBacKgroundColor;
      }
    }
  }

  Widget? returnText(t) {
    if (t == "اضف سيارة") {
      return Center(
        child: Container(
          width: 84,
          height: 17,
          child: Row(
            children: [
              Text(
                t,
                style: TextStyle(
                    color: returnTextColor(widget.textColor),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Tajawal"),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "+",
                style: TextStyle(
                    color: returnTextColor(widget.textColor),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Tajawal"),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    } else {
      return Text(
        t,
        style: TextStyle(
            color: returnTextColor(widget.textColor),
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontFamily: "Tajawal"),
        textAlign: TextAlign.center,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.ch == true
          ? null
          : () {
              widget.removeCar ?? () {};
              widget.nextPage != null
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) => widget.nextPage!))
                  : Navigator.pop(context);
            },
      style: ElevatedButton.styleFrom(
        backgroundColor: returnButtonColor(widget.buttonColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: returnBorderColor(widget.borderColor)!,
            width: 1,
          ),
        ),
      ),
      child: returnText(widget.text),
    );
  }
}
