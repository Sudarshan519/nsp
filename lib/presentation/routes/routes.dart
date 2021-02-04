import 'package:auto_route/auto_route_annotations.dart';
import 'package:wallet_app/presentation/pages/tab_bar/tab_bar_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: TabBarScreen, initial: true),
  ],
)
class $Router {
  TabBarScreen tabBarScreen;
}
