import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:temple/globals/settings/router/utils/router_utils.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  // Preffered size required for PreferredSizeWidget extension
  final Size prefSize;
  // App bar title depending on the screen
  final String title;
  // A bool to check whether its a subpage or not.
  final bool isSubPage;
  // An example of search icon press.
  final bool hasSearchFunction;

  CustomAppBar(
      {required this.title,
        this.isSubPage = false,
        this.hasSearchFunction = false,
        this.prefSize = const Size.fromHeight(56.0),
        Key? key})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      automaticallyImplyLeading: false,
      leading: widget.isSubPage
          ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => GoRouter.of(context).pop(),
      )
          : null,
      actions: [
        widget.hasSearchFunction
            ? IconButton(
            onPressed: () =>
            {},
            icon: const Icon(Icons.search))
            : const Icon(null),
        IconButton(
            onPressed: () {
              print("Don't poke me!!");
            },
            icon: const Icon(Icons.person))
      ],
    );
  }
}