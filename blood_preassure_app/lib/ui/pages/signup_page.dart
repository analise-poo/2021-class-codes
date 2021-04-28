import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignupPage extends StatelessWidget {
  static String pageName = 'signup';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 815,
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 26,
        bottom: 143,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: FlutterLogo(size: 32),
          ),
          SizedBox(height: 30.25),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff323f4b),
                  fontSize: 32,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.25),
          SizedBox(
            width: 343,
            child: Text(
              "Enter your phone number to sign up",
              style: TextStyle(
                color: Color(0xff323f4b),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 343,
            height: 68,
            padding: const EdgeInsets.only(
              top: 1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "COUNTRY",
                  style: TextStyle(
                    color: Color(0xff323f4b),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.50,
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  width: 343,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xff2f80ed),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 12,
                    top: 12,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sweden",
                        style: TextStyle(
                          color: Color(0xff2f80ed),
                          fontSize: 16,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 230),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: FlutterLogo(size: 24),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 343,
            height: 68,
            padding: const EdgeInsets.only(
              top: 1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LABEL",
                  style: TextStyle(
                    color: Color(0xff323f4b),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.50,
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  width: 343,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xff7b8794),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 287,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Entry",
                        style: TextStyle(
                          color: Color(0xff323f4b),
                          fontSize: 16,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 335,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xff323f4b),
                width: 0.50,
              ),
              color: Color(0xff2f80ed),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 124,
              vertical: 19,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "CONTINUE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 335,
            height: 24,
            padding: const EdgeInsets.only(
              top: 3,
              bottom: 5,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 7.50),
                Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xff616e7c),
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 7.50),
              ],
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 335,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Color(0xff323f4b),
                width: 0.50,
              ),
            ),
            padding: const EdgeInsets.only(
              left: 24,
              right: 20,
              top: 16,
              bottom: 12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    FontAwesome5Brands.facebook_f,
                    size: 24,
                  ),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 263,
                  child: Text(
                    "CONTINUE WITH FACEBOOK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff323f4b),
                      fontSize: 15,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.25),
          Container(
            width: 335,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Color(0xff323f4b),
                width: 0.50,
              ),
            ),
            padding: const EdgeInsets.only(
              left: 24,
              right: 20,
              top: 16,
              bottom: 12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: FlutterLogo(size: 24),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 263,
                  child: Text(
                    "CONTINUE WITH TWITTER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff323f4b),
                      fontSize: 15,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
