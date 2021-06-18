import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/features/partner_services/domain/usecase/get_partner_services.dart';
import 'package:wallet_app/features/partner_services/presentation/purchase_package/purchase_package_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';

class BuyPackagePage extends StatelessWidget {
  final ServicePackage package;
  const BuyPackagePage({Key? key, required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _customerId = '';
    String _amount = '';
    String _remarks = '';

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(package.packageName!,
            style: const TextStyle(
              color: Colors.white,
            )),
      ),
      body: BlocProvider(
        create: (_) => getIt<PurchasePackageBloc>(),
        child: BlocConsumer<PurchasePackageBloc, PurchasePackageState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            state.map(initial: (d) {
              return SizedBox();
            }, loading: (d) {
              return loadingPage();
            }, loaded: (d) {
              //show success and pop
              FlushbarHelper.createSuccess(message: 'Successfully Purchased!');

              Navigator.of(context).pop();
            }, failure: (f) {
              FlushbarHelper.createError(message: f.failure.toString());
            });
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextWidetWithLabelAndChild(
                        title: 'Customer ID',
                        isRequired: true,
                        child: InputTextWidget(
                          hintText: 'Customer ID',
                          onChanged: (s) {
                            _customerId = s;
                          },
                          value: '',
                        )),
                    TextWidetWithLabelAndChild(
                        title: 'Amount',
                        isRequired: true,
                        child: InputTextWidget(
                          isEnable: false,
                          hintText: '¥ ${package.packagePrice!}',
                          onChanged: (s) {
                            _amount = s;
                          },
                          value: '¥ ${package.packagePrice!}',
                          textInputType: TextInputType.number,
                        )),
                    TextWidetWithLabelAndChild(
                        title: 'Remarks',
                        isRequired: true,
                        child: InputTextWidget(
                          hintText: 'Remarks',
                          onChanged: (s) {
                            _remarks = s;
                          },
                          value: '',
                        )),
                    InkWell(
                      onTap: () {
                        if (_customerId.isNotEmpty) {
                          context.read<PurchasePackageBloc>().add(
                                PurchasePackageEvent.purchase(
                                  PurchasePackageParams(
                                    amount: package.packagePrice ?? 0.0,
                                    customerId: _customerId,
                                    packageId: package.id ?? 0,
                                    packageName: package.packageName ?? '',
                                    remarks: _remarks,
                                    serviceId:
                                        int.parse(package.serviceId ?? "0"),
                                  ),
                                ),
                              );
                        }
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
        ),
      ),
    );
  }
}
