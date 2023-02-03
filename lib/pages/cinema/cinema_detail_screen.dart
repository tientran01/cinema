import 'package:flutter_version370/pages/home/screen.dart';

import 'widgets/widget.dart';

class CinemaDetailScreen extends StatelessWidget {
  const CinemaDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      slivers: [
        // SliverAppBar(
        //   backgroundColor: Colors.white,
        //   expandedHeight: MediaQuery.of(context).size.height / 3,
        //   leading: IconButton(
        //     onPressed: () {},
        //     icon: Assets.icons.icArrowBack.image(),
        //   ),
        //   flexibleSpace: FlexibleSpaceBar(
        //     background: Assets.images.imBackground.image(
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
        SliverPersistentHeader(
          delegate: SearchHeaderWidget(),
          pinned: true,
        ),
        const SliverToBoxAdapter(
          child: CinemaDescriptionWidget(),
        )
      ],
    );
  }
}
