import 'package:flutter/material.dart';
import 'package:flutter_version370/components/app_image.dart';
import 'package:flutter_version370/pages/cinema/widgets/cinema_description_widget.dart';

class CinemaDetailScreen extends StatelessWidget {
  const CinemaDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: MediaQuery.of(context).size.height / 3,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AppImage.background,
                fit: BoxFit.cover,
              ),
              title: Card(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "The Walking Dead Drama, Action, Adventure, Fantasy, \nScience Fiction, Horror, Thriller",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CinemaDescriptionWidget(),
          ),
        ],
      ),
    );
  }
}
