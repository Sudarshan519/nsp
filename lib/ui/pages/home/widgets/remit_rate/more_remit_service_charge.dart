import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class RemitServiceChargeList extends StatelessWidget {
  final List<RemitCharge>? charges;
  const RemitServiceChargeList({Key? key, required this.charges})
      : super(key: key);

  String _formatString(String? input, double? rate) {
    if (input == null) return '';
    return 'JPY $rate ($input)'.replaceAll('JPY', '¥');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
            padding: const EdgeInsets.all(18.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          color: Palette.primaryButtonColor,
                          height: 3,
                          width: 120,
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Service Charge:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: charges?.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = charges?[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Text(
                          _formatString(
                            item?.rangeName,
                            item?.remitRate,
                          ),
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      );
                    },
                  ),
                ])));
  }
}
