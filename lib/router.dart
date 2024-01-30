import 'package:go_router/go_router.dart';
import 'package:queue_buster/constants/route_names.dart';
import 'package:queue_buster/pages/consumer/home.dart';
import 'package:queue_buster/pages/consumer/location.dart';
import 'package:queue_buster/widgets/consumer_layout.dart';
import 'package:queue_buster/pages/consumer/stores.dart';

import 'pages/consumer/cart.dart';
import 'pages/consumer/settings.dart';

final GoRouter goRouter =
    GoRouter(initialLocation: "/", routes: [
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
                routes: [
                  GoRoute(
                      path: "location",
                      builder: (context, state) => const Location())
                ],
                path: "/",
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
]);
