import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headerInfo(),
      ],
    );
  }

  Container _headerInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Palette.primary,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 5),
            _navigationBar(),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _navigationBar() {
    return Row(
      children: [
        BlocBuilder<HomePageDataBloc, HomePageDataState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => _userImage(""),
              failure: (_) => _userImage(""),
              failureWithData: (_) => _userImage(""),
              loading: (_) => _userImage(""),
              loaded: (success) =>
                  _userImage(success?.data?.userDetail?.avatar ?? ""),
              loadingWithData: (_) => _userImage(""),
            );
          },
        ),
        const Spacer(),
        SvgPicture.asset(
          "assets/images/navigation_bar/search.svg",
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/globe.svg",
          height: 25.0,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "assets/images/navigation_bar/notification.svg",
          height: 25.0,
        ),
      ],
    );
  }

  Widget _userImage(String image) {
    if (image.isEmpty) {
      return SizedBox(
        width: 36,
        height: 36,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Image.asset(
            'assets/images/navigation_bar/u1.png',
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return SizedBox(
      width: 36,
      height: 36,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Palette.primaryBackground,
              height: 36,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
