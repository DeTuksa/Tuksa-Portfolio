import 'package:flutter/widgets.dart';
import 'package:potrtfolio/UI/HomePage.dart';
import 'package:potrtfolio/UI/MobileHome.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return getValueForScreenType<Widget>(context: context, mobile: MobileHome(), desktop: HomePage());
        /*if (constraints.maxWidth >= 1000) {
          return HomePage();
        } else {
          return MobileHome();
        }*/
      },
    );
  }
}
