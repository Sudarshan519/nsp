import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class TopUpPage extends StatelessWidget {
  final TextEditingController _phNoController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topup'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
                        style: TextStyle(fontWeight: FontWeight.bold),
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
              child: Text('Mobile (10 digits)'),
            ),
            Container(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
            OutlineButton(
              onPressed: () {},
              child: Text('I have a coupon'),
              color: Palette.primary,
            ),
            MaterialButton(
              onPressed: () {},
              color: Palette.primary,
              textColor: Colors.white,
              child: const Text('Proceed'),
            ),
            Text('My Payment')
          ],
        ),
      ),
    );
  }
}
