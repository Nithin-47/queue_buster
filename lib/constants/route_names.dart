enum RouteNames {
  authLogin,
  authSignup,
  home,
  stores,
  selectLocation,
  cart,
  settings,
}

extension RouteNamesHelper on RouteNames {
  String get path {
    switch(this) {
      case RouteNames.authLogin:
        return "/auth/login";
      case RouteNames.authSignup:
        return "/auth/register";
      case RouteNames.home:
        return "/";
      case RouteNames.stores:
        return "/stores";
      case RouteNames.selectLocation:
        return "/select-location";
      case RouteNames.cart:
        return "/cart";
      case RouteNames.settings:
        return "/settings";

    }
  }
}