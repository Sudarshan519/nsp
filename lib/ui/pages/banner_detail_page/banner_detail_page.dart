import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class BannerDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choy-San",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: detailBody(context),
    );
  }

  Widget detailBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/banner_details/choy-san.png',
              width: 90,
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            const Text(
              "What is Choy-San Credit Card ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Choy-San is a prepaid VISA Credit Card for Foreigners Living in Japan Operated by 3PLATZ in Association with Aplus. We serve & support Safe, Secure, Beneficial & Convenient Life for Foreign Residents in Japan. Anyone can Apply for it & Get Service Activated Just 5 Minutes after coming to Japan.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "User Manual. How to Apply ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => context.pushRoute(
                PdfViewerRoute(
                  pdfUrl:
                      "https://app.bnpj.jp/media/Choy-San_Manual_English.pdf",
                  title: "English Manual",
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/banner_details/pdf-file.svg",
                    height: 20.0,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "English Manual",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              height: 1,
              color: Palette.dividerColor,
            ),
            InkWell(
              onTap: () => context.pushRoute(
                PdfViewerRoute(
                  pdfUrl:
                      "https://app.bnpj.jp/media/Choy-San_Manual_Nepali.pdf",
                  title: "Nepali Manual",
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/banner_details/pdf-file.svg",
                    height: 20.0,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Nepali Manual",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Wrap(
              children: [
                const Text(
                  "You can Join ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  "Choy-San Community ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  "from anywhere ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () => context.pushRoute(
                    AppWebViewRoute(
                      url: "https://c.choy-san.jp/signup",
                      title: "Join Now",
                    ),
                  ),
                  child: const Text(
                    "Join Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Wrap(
              children: [
                const Text(
                  "NOTE: Choy-san Prepaid VISA Credit Wallet can be Installed and Activated with Japan Mobile Number so anyone can download and apply for it after coming to Japan. ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () => _launchURL("https://bit.ly/Choy-San"),
                  child: const Text(
                    "Download Here",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const Text(
                  " the Choy-San App.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
