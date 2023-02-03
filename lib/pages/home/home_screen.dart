import 'package:flutter_version370/configs/locale/generated/l10n.dart';

import 'screen.dart';

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
          padding: EdgeInsets.symmetric(horizontal: width * .03),
          itemCount: 4,
          itemBuilder: (context, index) => CustomBottomNavigationWidget(
            selectedIndex: index,
            currentIndex: currentIndex,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            titles: [
              S.current.movie,
              S.current.cinema,
              S.current.snack,
              S.current.me,
            ],
            icons: const [
              AppImage.icTicket,
              AppImage.icVideoPlayer,
              AppImage.icCinema,
              AppImage.icProfile,
            ],
          ),
        ),
      ),
    );
  }
}
