import 'package:go_router/go_router.dart';
import 'package:mobile_app/constants/route_names.dart';
import 'package:mobile_app/pages/consumer/home.dart';
import 'package:mobile_app/pages/consumer/location.dart';
import 'package:mobile_app/layouts/consumer_layout.dart';
import 'package:mobile_app/pages/consumer/stores.dart';
import 'package:mobile_app/pages/landing.dart';

import 'pages/consumer/cart.dart';
import 'pages/consumer/settings.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: RouteNames.consumerHome.path,




  routes: [

        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationshell) =>
                ScaffoldWithNavBar(navigationShell: navigationshell),
            branches: [
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                      path: RouteNames.consumerHome.path,
                      builder: (context, state) => const Home()),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                      path: RouteNames.consumerStores.path,
                      builder: (context, state) => const Stores()),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                      path: RouteNames.consumerCart.path,
                      builder: (context, state) => const Cart()),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                      path: RouteNames.consumerSettings.path,
                      builder: (context, state) => const Settings()),
                ],
              ),
            ]),


        GoRoute(
            path: RouteNames.consumerLocation.path,
            builder: (context, state) => const Location()
        )
      ]






);
