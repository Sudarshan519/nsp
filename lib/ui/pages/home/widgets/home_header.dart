import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class HomeUserProfileWidget extends StatelessWidget {
  const HomeUserProfileWidget();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headerInfo(context),
      ],
    );
  }

  Container _headerInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Palette.primary,
      ),
      child: BlocBuilder<HomePageDataBloc, HomePageDataState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => _userImage(context, null),
            failure: (_) => _userImage(context, null),
            failureWithData: (_) => _userImage(context, null),
            loading: (_) => _userImage(context, null),
            loaded: (success) => _userImage(context, success.data.userDetail),
            loadingWithData: (_) => _userImage(context, null),
          );
        },
      ),
    );
  }

  Widget _userImage(BuildContext context, UserDetail? userDetail) {
    final image = userDetail?.avatar ?? "";

    if (image.isEmpty) {
      return InkWell(
        onTap: () {
          if (userDetail != null) {
            context.pushRoute(const ProfileRoute());
          }
        },
        child: SizedBox(
          width: 36,
          height: 36,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.asset(
              'assets/images/navigation_bar/u1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    return InkWell(
      onTap: () {
        if (userDetail != null) {
          context.pushRoute(const ProfileRoute());
        }
      },
      child: SizedBox(
        width: 36,
        height: 36,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                color: Palette.primaryBackground,
                height: 36,
                child: Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                ),
              );
            },
            errorBuilder: (_, __, ___) {
              return Image.asset(
                'assets/images/navigation_bar/u1.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
