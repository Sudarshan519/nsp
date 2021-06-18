import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/features/partner_services/presentation/purchase_package/purchase_package_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class BuyPackagePage extends StatelessWidget {
  final ServicePackage package;
  const BuyPackagePage({
    Key? key,
    required this.package,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PurchasePackageBloc>()
        ..add(
          PurchasePackageEvent.setInitialState(
            package,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: Text(package.packageName!,
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
        body: blocConsumer(context),
      ),
    );
  }

  Widget blocConsumer(BuildContext context) {
    return BlocConsumer<PurchasePackageBloc, PurchasePackageState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            },
            (success) {
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: AppConstants.paymentSuccessTitle,
                  message: AppConstants.paymentSuccessMessage,
                  onPressed: () {
                    context.router.navigate(const TabBarRoute());
                  },
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return SingleChildScrollView(
          key: state.key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextWidetWithLabelAndChild(
                    title: 'Customer ID',
                    isRequired: true,
                    child: InputTextWidget(
                      hintText: 'Customer ID',
                      onChanged: (value) => context
                          .read<PurchasePackageBloc>()
                          .add(PurchasePackageEvent.changeCustomerId(value)),
                      value: state.customerId,
                    )),
                TextWidetWithLabelAndChild(
                  title: 'Amount',
                  isRequired: true,
                  child: InputTextWidget(
                    isEnable: false,
                    hintText: '¥ ${package.packagePrice!}',
                    onChanged: (_) {},
                    value: '¥ ${state.amount}',
                    textInputType: TextInputType.number,
                  ),
                ),
                TextWidetWithLabelAndChild(
                    title: 'Remarks',
                    isRequired: true,
                    child: InputTextWidget(
                      hintText: 'Remarks',
                      onChanged: (value) => context
                          .read<PurchasePackageBloc>()
                          .add(PurchasePackageEvent.changeRemark(value)),
                      value: state.remark,
                    )),
                InkWell(
                  onTap: () {
                    context.read<PurchasePackageBloc>().add(
                          const PurchasePackageEvent.purchase(),
                        );
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Palette.primary,
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Palette.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
