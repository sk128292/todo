import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/widgets/landingPage1.dart';
import 'package:todo/app/widgets/landingPage2.dart';
import 'package:todo/app/widgets/landingPage3.dart';
import 'package:todo/app/widgets/landingPage4.dart';
import 'package:todo/app/widgets/landingPage5.dart';
import 'package:todo/app/widgets/landingPage6.dart';
import 'package:todo/app/widgets/landingPage7.dart';
import 'package:todo/app/widgets/landingPage8.dart';

class LandingController extends GetxController {
  final RxInt _selectedPageIndex = RxInt(0);
  int get selectedPageIndex => _selectedPageIndex.value;
  set selectedPageIndex(int v) => _selectedPageIndex.value = v;

  bool get isLastPage => selectedPageIndex == pages.length - 1;

  PageController pageController = PageController();

  List<Widget> pages = [
    LandinPage1(),
    LandinPage2(),
    LandinPage3(),
    LandinPage4(),
    LandinPage5(),
    LandinPage6(),
    LandinPage7(),
    LandinPage8(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
