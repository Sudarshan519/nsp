import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class IndividualInsurancePage extends StatelessWidget {
  final String insuranceTitle;
  final TextEditingController _policyno = TextEditingController();
  final TextEditingController _dob = TextEditingController();

  IndividualInsurancePage({Key? key, required this.insuranceTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          insuranceTitle,
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
      body: Column(
        children: [
          const BalanceWidget(),
          body(),
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'username',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 36,
              child: TextField(
                maxLength: 20,
                controller: _policyno,
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: const TextStyle(fontSize: 13),
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.1,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Date of Birth',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 36,
              child: TextField(
                maxLength: 20,
                controller: _policyno,
                decoration: InputDecoration(
                  hintText: "Enter Date",
                  hintStyle: const TextStyle(fontSize: 13),
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.1,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {},
              color: Palette.primary,
              textColor: Colors.white,
              child: const Text('Submit'),
            ),
            const Spacer(),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.black)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Payments (1)',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.black,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
