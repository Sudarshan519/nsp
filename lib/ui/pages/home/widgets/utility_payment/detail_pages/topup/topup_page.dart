import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class TopUpPage extends StatelessWidget {
  final TextEditingController _phNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Topup',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ShadowBoxWidget(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Balance',
                        style: TextStyle(fontSize: 12, color: Colors.amber),
                      ),
                      Text(
                        'NRP 1200',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.refresh,
                        size: 34,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Mobile (10 digits)',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 36,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLength: 10,
                      controller: _phNoController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                          hintText: "Mobile Number",
                          hintStyle: TextStyle(fontSize: 13),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 0.1,
                              style: BorderStyle.none,
                            ),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.contacts_outlined))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Palette.primary,
                    radius: 18,
                    child: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                'I have a coupon',
                style: TextStyle(color: Palette.primary),
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {},
              color: Palette.primary,
              textColor: Colors.white,
              child: const Text('Proceed'),
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
