import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_header.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_page_header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

// bool _currentlyShowing = false;
// PreferredSize homeAppBar(ScrollController scrollController) {
//   return TestH();
// }

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;
  const HomeAppBar({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _currentlyShowing = false;
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight), // Set this height
      child: StatefulBuilder(
        builder: (context, setState) {
          if (!scrollController.hasListeners) {
            scrollController.addListener(() {
              if (scrollController.offset > 20) {
                const show = true;
                if (_currentlyShowing != show) {
                  print(scrollController.offset);

                  setState(() => _currentlyShowing = true);
                }
              } else {
                const show = false;
                if (_currentlyShowing != show) {
                  print(scrollController.offset);

                  setState(() => _currentlyShowing = false);
                }
              }
            });
          }
          return AppBar(
            leading: const HomeUserProfileWidget(),
            title:
                _currentlyShowing ? const HomeAppbarTitle() : const SizedBox(),
            centerTitle: false,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => context.pushRoute(SearchRoute()),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/navigation_bar/search.svg",
                        height: 25.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => context.pushRoute(const NotificationListRoute()),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/navigation_bar/notification.svg",
                        height: 25.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
            elevation: 0,
          );
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
