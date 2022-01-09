import 'package:flutter/material.dart';

class LandinPage5 extends StatelessWidget {
  const LandinPage5({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.only(top: 220),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Pinch together vertically ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "to collapse your current level and navigate up.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150),
              Container(
                height: 340,
                width: 300,
                child: Image.asset(
                  "assets/1.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
