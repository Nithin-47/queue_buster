import 'package:go_router/go_router.dart';
import 'package:mobile_app/constants/route_names.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/layouts/consumer_layout.dart';
import 'package:mobile_app/pages/consumer/stores.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: RouteNames.consumerHome.path,
  routes: [
    ShellRoute(
        builder: (context, state, child) => ConsumerLayout(child: child),
        routes: [
          GoRoute(
            path: RouteNames.consumerHome.path,
            builder: (context, state) {
              return const Home();
            }
          ),
          GoRoute(
              path: RouteNames.consumerStores.path,
              builder: (context, state) {
                return const Stores();
              }
          ),
        ])
  ],
);
