import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/usecase/logout_user.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_header.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_page_header.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _profileData = _getProfileList(context);
    return Scaffold(
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            HomeHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomePageHeader(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _profileData.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return _ProfileItem(
                            imageName: _profileData[index].image,
                            title: _profileData[index].title,
                            onTap: _profileData[index].onTap,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<_ProfileData> _getProfileList(BuildContext context) {
    return [
      _ProfileData(
        image: "icon-profile",
        title: "Profile",
        onTap: () => context.pushRoute(const ProfileRoute()),
      ),
      _ProfileData(
        image: "icon-coupon",
        title: "Coupons",
        onTap: () => context.pushRoute(const CouponRoute()),
      ),
      _ProfileData(
        image: "icon-jap-manner",
        title: "Japanese Manners",
        onTap: () => context.pushRoute(JapaneseMannerRoute()),
      ),
      _ProfileData(
        image: "icon-partner",
        title: "Partner Services",
        onTap: () => context.pushRoute(PartnerServicesRoute()),
      ),
      _ProfileData(
        image: "icon-alerts",
        title: "Alerts",
        onTap: () => context.pushRoute(const AlertsTabRoute()),
      ),
      // _ProfileData(
      //   image: "icon-about",
      //   title: "About",
      //   onTap: () {},
      // ),
      // _ProfileData(
      //   image: "icon-contact",
      //   title: "Contact",
      //   onTap: () {},
      // ),
      _ProfileData(
        image: "icon-privacy-policy",
        title: "Privacy Policy",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
                url: "https://nspweb.truestreamz.com/privacy-policy",
                title: "Privacy Policy"),
          );
        },
      ),
      _ProfileData(
        image: "icon-terms",
        title: "Terms and Conditions",
        onTap: () {
          context.pushRoute(
            AppWebViewRoute(
              url: "https://nspweb.truestreamz.com/terms-conditions",
              title: "Terms and Conditions",
            ),
          );
        },
      ),
      _ProfileData(
        image: "icon-logout",
        title: "Logout",
        onTap: () {
          getIt<LogoutUser>().call(NoParams());
          context.router.replace(const LoginRoute());
        },
      ),
    ];
  }
}

class _ProfileItem extends StatelessWidget {
  final String imageName;
  final String title;
  final Function() onTap;

  const _ProfileItem({
    Key? key,
    required this.imageName,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/more/$imageName.svg",
              height: 30.0,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Palette.black,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileData {
  final String image;
  final String title;
  final Function() onTap;

  _ProfileData({
    required this.image,
    required this.title,
    required this.onTap,
  });
}
