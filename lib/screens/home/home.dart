import 'package:flutter/material.dart';

import '../../globals/settings/router/utils/router_utils.dart';
import '../../globals/widgets/app_bar/app_bar.dart';
import '../../globals/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../../globals/widgets/user_drawer/user_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.

  // create a global key for scaffold state
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Provide key to scaffold
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: APP_PAGE.home.routePageTitle,
        // pass the scaffold key to custom app bar
        scaffoldKey: _scaffoldKey,
      ),
      // Pass our drawer to drawer property
      // if you want to slide lef to right use
      // drawer: UserDrawer(),
      // if you want to slide right to left use
      // endDrawer: const UserDrawer(),
      drawer: const UserDrawer(),
      bottomNavigationBar: const CustomBottomNavBar(
        navItemIndex: 0,
      ),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.background,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Card(
                child: Container(
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.all(4),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu id lectus in gravida mauris, nascetur. Cras ut commodo consequat leo, aliquet a ipsum nulla.",
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: const Text("Text Button"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text(
                      "Hi",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ])),
      ),
    );
  }
}
