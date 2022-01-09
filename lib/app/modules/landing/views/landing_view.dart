import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.selectedPageIndex = index;
                    },
                    children: controller.pages,
                  ),
                ),
                Obx(
                  () => controller.selectedPageIndex == 0
                      ? Container()
                      : Positioned(
                          top: controller.selectedPageIndex == 6 ||
                                  controller.selectedPageIndex == 7
                              ? null
                              : Get.height * .5,
                          left: Get.width * .27,
                          bottom: controller.selectedPageIndex == 6 ||
                                  controller.selectedPageIndex == 7
                              ? 20
                              : null,
                          child: Obx(
                            () => DotsIndicator(
                              dotsCount: controller.pages.length,
                              position: controller.selectedPageIndex.toDouble(),
                              decorator: DotsDecorator(
                                activeColor: Colors.black,
                                activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Obx(
          //       () => DotsIndicator(
          //         dotsCount: controller.pages.length,
          //         position: controller.selectedPageIndex.toDouble(),
          //         decorator: DotsDecorator(
          //           activeColor: Colors.black,
          //           activeSize: Size(20, 10),
          //           activeShape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(5),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
