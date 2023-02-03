import 'package:flutter_version370/gen/assets.gen.dart';
import 'package:flutter_version370/pages/home/screen.dart';

class SearchHeaderWidget extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = Dimens.size100;
  final double maxTopBarHeight = Dimens.size200;
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final progress = shrinkOffset / maxExtent;
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: progress,
            child: const ColoredBox(
              color: Color(0xBE7A81FF),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: 1 - progress,
            child: Assets.images.imBackground.image(
              fit: BoxFit.cover,
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            padding: EdgeInsets.lerp(
              EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              EdgeInsets.only(bottom: 16),
              progress,
            ),
            alignment: Alignment.lerp(
              Alignment.bottomLeft,
              Alignment.bottomCenter,
              progress,
            ),
            child: Text('Mountains'),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => Dimens.size300;

  @override
  double get minExtent => Dimens.size100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
