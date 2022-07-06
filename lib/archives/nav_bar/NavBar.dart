import 'package:flutter/material.dart';
import '../recipes/recipes_list.dart';

// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'Marion',
      ),
      accountEmail: Text(
        'marion@gmail.com',
      ),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text(
            'Recettes',
          ),
          leading: const Icon(Icons.cookie),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipesList()));
          },
        ),
        ListTile(
          title: const Text(
            'Actualités',
          ),
          leading: const Icon(Icons.newspaper),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My keto project',
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text(
            'body test',
          ),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

