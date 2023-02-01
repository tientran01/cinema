import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_color.dart';
import 'package:flutter_version370/components/dimens.dart';

import 'device_helper.dart';

class CustomBottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final int currentIndex;
  final VoidCallback onTap;
  final List<String> titles;
  final List<String> icons;
  const CustomBottomNavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.currentIndex,
    required this.onTap,
    required this.titles,
    required this.icons,
  }) : super(key: key);

  bool get checkCurrentIndex => selectedIndex == currentIndex;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            width: checkCurrentIndex
                ? width * Dimens.zeroPointThirtyTwo
                : width * .18,
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              height: checkCurrentIndex
                  ? DeviceHelper.shared.isTablet
                      ? width * 0.1
                      : width * 0.12
                  : Dimens.size0,
              width: checkCurrentIndex
                  ? width * Dimens.zeroPointThirtyTwo
                  : Dimens.size0,
              decoration: BoxDecoration(
                color: checkCurrentIndex
                    ? AppColor.debianRed.withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  Dimens.size50,
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            width: checkCurrentIndex ? width * .31 : width * .18,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: checkCurrentIndex ? Dimens.size30 : Dimens.size20,
                      child: Image.asset(
                        icons[selectedIndex],
                        color: checkCurrentIndex
                            ? AppColor.debianRed
                            : Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      width: Dimens.size2,
                    ),
                    AnimatedOpacity(
                      opacity: checkCurrentIndex ? 1 : 0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: Text(
                        checkCurrentIndex ? titles[selectedIndex] : '',
                        style: const TextStyle(
                          color: AppColor.debianRed,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
