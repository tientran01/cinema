import 'package:flutter_version370/components/app_color.dart';
import 'package:flutter_version370/pages/home/screen.dart';

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
                : width * Dimens.zeroPointEighteen,
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              constraints: BoxConstraints(
                maxHeight: checkCurrentIndex
                    ? DeviceHelper.shared.isTablet
                        ? width * Dimens.opacity1
                        : width * Dimens.zeroPointTwelve
                    : Dimens.size0,
                maxWidth: checkCurrentIndex
                    ? width * Dimens.zeroPointThirtyTwo
                    : Dimens.size0,
              ),
              decoration: BoxDecoration(
                color: checkCurrentIndex
                    ? AppColor.debianRed.withOpacity(Dimens.opacity2)
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
            width: checkCurrentIndex
                ? width * Dimens.zeroPointThirtyTwo
                : width * Dimens.zeroPointEighteen,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !checkCurrentIndex
                    ? Image.asset(
                        icons[selectedIndex],
                        color: Colors.black45,
                        width: Dimens.size25,
                      )
                    : Constants.emptyBox,
                Text(
                  checkCurrentIndex ? titles[selectedIndex] : '',
                  style: const TextStyle(
                    color: AppColor.debianRed,
                    fontWeight: FontWeight.w600,
                    fontSize: Dimens.size12,
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
