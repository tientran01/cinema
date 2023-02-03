import 'package:flutter/widgets.dart';

class TitleSectionWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  const TitleSectionWidget({
    Key? key,
    required this.title,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              images.length,
              (index) => Container(
                margin: EdgeInsets.only(
                  right: (index == (images.length - 1)) ? 0 : 10.0,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 4,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
