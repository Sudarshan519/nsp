import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
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
        image: "about",
        title: "About us",
        onTap: () {},
      ),
      _ProfileData(
        image: "contact_us",
        title: "Contact Us",
        onTap: () {},
      ),
      _ProfileData(
        image: "privacy_policy",
        title: "Privacy Policy",
        onTap: () {},
      ),
      _ProfileData(
        image: "logout",
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
            Image.asset(
              'assets/images/more/$imageName.png',
              height: 15,
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
