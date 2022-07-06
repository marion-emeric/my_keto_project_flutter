// Create enum to represent different routes
enum APP_PAGE {
  onboard,
  auth,
  home,
  search,
  recipes,
  favorite,
}

extension AppPageExtension on APP_PAGE {
  // create path for routes
  String get routePath {
    switch (this) {
      case APP_PAGE.home:
        return "/";

      case APP_PAGE.onboard:
        return "/onboard";

      case APP_PAGE.auth:
        return "/auth";

      case APP_PAGE.search:
        return "/search";

      case APP_PAGE.favorite:
        return "/favorite";

      case APP_PAGE.recipes:
        return "/recipes";

      default:
        return "/";
    }
  }

// for named routes
  String get routeName {
    switch (this) {
      case APP_PAGE.home:
        return "HOME";

      case APP_PAGE.onboard:
        return "ONBOARD";

      case APP_PAGE.auth:
        return "AUTH";

      case APP_PAGE.search:
        return "Search";

      case APP_PAGE.favorite:
        return "Favorite";

      case APP_PAGE.recipes:
        return "Recipes";

      default:
        return "HOME";
    }
  }

// for page titles to use on appbar
  String get routePageTitle {
    switch (this) {
      case APP_PAGE.home:
        return "Astha";

      case APP_PAGE.auth:
        return "Register/SignIn";

      case APP_PAGE.recipes:
        return "Recipes";

      case APP_PAGE.search:
        return "Search";

      case APP_PAGE.favorite:
        return "Your Favorites";

      default:
        return "Astha";
    }
  }
}
