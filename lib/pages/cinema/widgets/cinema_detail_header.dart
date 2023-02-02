import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';

class CinemaDetailHeader extends SliverPersistentHeaderDelegate {
  final double maxExtented;
  final double minExtented;

  const CinemaDetailHeader({
    required this.maxExtented,
    required this.minExtented,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Image.asset(
            AppImage.background,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 10,
          top: 30,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
