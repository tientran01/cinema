import 'package:flutter/material.dart';
import 'package:flutter_version370/pages/base/base_screen.dart';

class MovieScreen extends BaseScreen {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  MovieScreenState createState() => MovieScreenState();
}

class MovieScreenState extends BaseScreenState<MovieScreen> {
  @override
  Widget body() {
    return const Center(
      child: Text("hello"),
    );
  }
}
