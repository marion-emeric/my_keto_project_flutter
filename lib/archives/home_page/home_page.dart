import 'package:flutter/material.dart';
import '../nav_bar/NavBar.dart';
import '../nav_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(title: APP_PAGE.home.routePageTitle,),
      body: const Text('In progress...'),
    );
  }
}
