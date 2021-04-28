import 'package:flutter/material.dart';

class HomeTestPage extends StatelessWidget {
  static String pageName = 'home-test';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 812,
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 72,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 343,
            child: Text(
              "Today’s Fast",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff323f4b),
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: 38.60),
          Container(
            width: 311,
            height: 311,
            child: Stack(
              children: [
                Container(
                  width: 311,
                  height: 311,
                  child: Stack(
                    children: [
                      Container(
                        width: 311,
                        height: 311,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.orange,
                            width: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 114,
                  child: Container(
                    width: 215,
                    height: 58,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 215,
                          child: Text(
                            "Elapsed Time",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff7b8794),
                              fontSize: 16,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        SizedBox(
                          width: 215,
                          child: Text(
                            "11:15:06",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff323f4b),
                              fontSize: 32,
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38.60),
          Container(
            width: 172,
            height: 38,
            padding: const EdgeInsets.only(
              left: 20,
              right: 19,
              top: 1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "STARTED FASTING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff7b8794),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.50,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Yesterday, 20:30",
                  textAlign: TextAlign.center,
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
          SizedBox(height: 38.60),
          Container(
            width: 172,
            height: 38,
            padding: const EdgeInsets.only(
              left: 37,
              right: 38,
              top: 1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "FAST ENDING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff7b8794),
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.50,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Today, 11:30",
                  textAlign: TextAlign.center,
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
          SizedBox(height: 38.60),
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
              horizontal: 126,
              vertical: 19,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "END FAST",
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
          SizedBox(height: 38.60),
          Divider(thickness: .75, color: Colors.grey),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 93,
                height: 80,
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 19,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Timer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2f80ed),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 94,
                height: 80,
                padding: const EdgeInsets.only(
                  left: 31,
                  right: 32,
                  top: 16,
                  bottom: 19,
                ),
                child: Column(
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
                    SizedBox(height: 9),
                    Text(
                      "Fasts",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff323f4b),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 94,
                height: 80,
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 27,
                  top: 16,
                  bottom: 19,
                ),
                child: Column(
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
                    SizedBox(height: 9),
                    Text(
                      "History",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff323f4b),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 94,
                height: 80,
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 31,
                  top: 16,
                  bottom: 19,
                ),
                child: Column(
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
                    SizedBox(height: 9),
                    Text(
                      "Learn",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff323f4b),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
