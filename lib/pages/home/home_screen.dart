import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';
import 'package:flutter_version370/components/constants.dart';
import 'package:flutter_version370/components/dimens.dart';
import 'package:flutter_version370/pages/base/widget/custom_bottom_navigation.dart';
import 'package:flutter_version370/pages/base/widget/device_helper.dart';

import '../cinema/cinema_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: const SingleChildScrollView(
        child: CinemaDetailScreen(),
      ),
      bottomNavigationBar: Container(
        height: DeviceHelper.shared.isTablet
            ? width * Dimens.zeroPointTwelve
            : width * .155,
        margin: DeviceHelper.shared.isTablet
            ? Constants.horizontalEdge30
            : Constants.edgeInsetAll10,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.size5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(Dimens.opacity2),
              blurRadius: Dimens.size30,
              offset: const Offset(
                Dimens.size0,
                Dimens.size10,
              ),
            )
          ],
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: width * .02),
          itemCount: 4,
          itemBuilder: (context, index) => CustomBottomNavigationWidget(
            selectedIndex: index,
            currentIndex: currentIndex,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            titles: const [
              'ticket',
              'cinema',
              'video',
              'menu',
            ],
            icons: const [
              AppImage.icTicket,
              AppImage.icCinema,
              AppImage.icVideoPlayer,
              AppImage.icProfile,
            ],
          ),
        ),
      ),
    );
  }
}
