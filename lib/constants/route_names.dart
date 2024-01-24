enum RouteNames {
  authLogin,
  authRegister,
  consumerHome,
  consumerStores,
  consumerLocation,
}

extension RouteNamesHelper on RouteNames {
  String get path {
    switch(this) {
      case RouteNames.authLogin:
        return "/auth/login";
      case RouteNames.authRegister:
        return "/auth/register";
      case RouteNames.consumerHome:
        return "/consumer";
      case RouteNames.consumerStores:
        return "/consumer/stores";
      case RouteNames.consumerLocation:
        return "/consumer/location";
    }
  }

  // String get name {
  //   switch(this) {
  //     case RouteNames.authLogin:
  //       return "auth-login";
  //     case RouteNames.authRegister:
  //       return "auth-register";
  //     case RouteNames.consumerHome:
  //       return "consumer-home";
  //     case RouteNames.consumerLocation:
  //       return "consumer-location";
  //   }
  // }
}