import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../globals/settings/router/utils/router_utils.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  // Preferred size required for PreferredSizeWidget extension
  final Size prefSize;

  // App bar title depending on the screen
  final String title;

  // A bool to check whether its a subpage or not.
  final bool isSubPage;

  // An example of search icon press.
  final bool hasSearchFunction;

  // Declare new  global key field of type ScaffoldState
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar(
      {required this.title,
      required this.scaffoldKey,
      // Helps to determine if the icons like Back Arrow and Search will appear on a screen or not
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
                    GoRouter.of(context).goNamed(APP_PAGE.search.routeName),
                icon: const Icon(Icons.search))
            : const Icon(null),
        IconButton(
          icon: const Icon(Icons.person),
          // Slide right to left
          // onPressed: () => widget.scaffoldKey.currentState!.openEndDrawer(),
          // slide left to right
          onPressed: () => widget.scaffoldKey.currentState!.openDrawer(),
        )
      ],
    );
  }
}
