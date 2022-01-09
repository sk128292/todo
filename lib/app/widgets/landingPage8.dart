import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class LandinPage8 extends StatelessWidget {
  const LandinPage8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: Text(
                "Sign up to the newsletter, and unlock a theme for your lists.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 300,
              child: Image.asset(
                "assets/newsletter.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, bottom: 15),
              height: 40,
              child: TextFormField(
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  contentPadding: EdgeInsets.only(top: 12, left: 10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  child: Text("Skip"),
                ),
                MaterialButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  child: Text(
                    "Join",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
