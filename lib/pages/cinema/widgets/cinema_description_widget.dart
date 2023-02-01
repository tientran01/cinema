import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';
import 'package:flutter_version370/pages/cinema/widgets/custom_icon_widget.dart';
import 'package:flutter_version370/pages/cinema/widgets/title_section_widget.dart';

class CinemaDescriptionWidget extends StatelessWidget {
  const CinemaDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomIconWidget(icon: Icons.star, title: '84%'),
              CustomIconWidget(icon: Icons.tv, title: 'AMC'),
              CustomIconWidget(icon: Icons.people, title: 'TV-MA'),
              CustomIconWidget(icon: Icons.av_timer_rounded, title: '45m'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "The series centers on sheriff's deputy Rick Grimes, who wakes up from a coma to discover the apocalypse. He becomes the leader of a group of survivours from the Atlanta, Georgia..\n"
                "region as they attempt to sustain themselves and protect themselves not only against attacks by walkers but by other groups of survivors willing to assure their longevity by any means necessary.",
              ),
              SizedBox(height: 10.0),
              TitleSectionWidget(
                title: "Related show",
                images: [
                  AppImage.background,
                  AppImage.card,
                  AppImage.background,
                  AppImage.card,
                  AppImage.background,
                  AppImage.card,
                ],
              ),
              SizedBox(height: 10.0),
              TitleSectionWidget(
                title: "Feature show",
                images: [
                  AppImage.background,
                  AppImage.card,
                  AppImage.background,
                  AppImage.card,
                  AppImage.background,
                  AppImage.card,
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
