import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_header.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_page_header.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    Key key,
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
        onTap: () => ExtendedNavigator.of(context).push(Routes.profilePage),
      ),
      _ProfileData(
        image: "icon-jap-manner",
        title: "Japanese Manners",
        onTap: () =>
            ExtendedNavigator.of(context).push(Routes.japaneseMannerPage),
      ),
      _ProfileData(
        image: "icon-partner",
        title: "Partner Services",
        onTap: () =>
            ExtendedNavigator.of(context).push(Routes.partnerServicesPage),
      ),
      _ProfileData(
        image: "icon-alerts",
        title: "Alerts",
        onTap: () {},
      ),
      _ProfileData(
        image: "icon-about",
        title: "About",
        onTap: () {},
      ),
      _ProfileData(
        image: "icon-contact",
        title: "Contact",
        onTap: () {},
      ),
      _ProfileData(
        image: "icon-privacy-policy",
        title: "Privacy Policy",
        onTap: () {},
      ),
      _ProfileData(
        image: "icon-terms",
        title: "Terms and Conditions",
        onTap: () {},
      ),
      _ProfileData(
        image: "icon-logout",
        title: "Logout",
        onTap: () {
          ExtendedNavigator.of(context).replace(Routes.loginPage);
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
    Key key,
    @required this.imageName,
    @required this.title,
    @required this.onTap,
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
              height: 25.0,
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
    @required this.image,
    @required this.title,
    @required this.onTap,
  });
}
