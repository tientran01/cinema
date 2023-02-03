import 'package:flutter_version370/pages/home/screen.dart';

abstract class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);
}

abstract class BaseScreenState<Page extends BaseScreen> extends State<Page>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: body(),
    );
  }

  Widget body();

  Color get backgroundColor => Colors.white;
}
