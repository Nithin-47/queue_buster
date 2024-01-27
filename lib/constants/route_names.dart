enum RouteNames {
  // authLogin,
  // authRegister,
  landing,
  consumerHome,
  consumerStores,
  consumerLocation,
  consumerCart,
  consumerSettings,
}

extension RouteNamesHelper on RouteNames {
  String get path {
    switch(this) {
      // case RouteNames.authLogin:
      //   return "/auth/login";
      // case RouteNames.authRegister:
      //   return "/auth/register";
      case RouteNames.landing:
        return "/";
      case RouteNames.consumerHome:
        return "/home";
      case RouteNames.consumerStores:
        return "/stores";
      case RouteNames.consumerLocation:
        return "/location";
      case RouteNames.consumerCart:
        return "/cart";
      case RouteNames.consumerSettings:
        return "/settings";

    }
  }

  String get name {
    switch(this) {
      // case RouteNames.authLogin:
      //   return "auth-login";
      // case RouteNames.authRegister:
      //   return "auth-register";
      case RouteNames.landing:
        return "landing";
      case RouteNames.consumerHome:
        return "consumer-home";
      case RouteNames.consumerStores:
        return "consumer-stores";
      case RouteNames.consumerLocation:
        return "consumer-location";
      case RouteNames.consumerCart:
        return "consumer-cart";
      case RouteNames.consumerSettings:
        return "consumer-settings";

    }
  }
}