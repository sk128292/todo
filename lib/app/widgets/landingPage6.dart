import 'package:flutter/material.dart';

class LandinPage6 extends StatelessWidget {
  const LandinPage6({Key? key}) : super(key: key);

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
                width: 280,
                padding: const EdgeInsets.only(top: 250),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Tap on a list to see its content.",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: " Tap on a list to edit it...",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
