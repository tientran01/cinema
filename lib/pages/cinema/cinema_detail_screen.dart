import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';
import 'package:flutter_version370/pages/cinema/widgets/cinema_description_widget.dart';

class CinemaDetailScreen extends StatelessWidget {
  const CinemaDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: MediaQuery.of(context).size.height / 3,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              AppImage.background,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CinemaDescriptionWidget(),
        )
      ],
    );
  }
}
