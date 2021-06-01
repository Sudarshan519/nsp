import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class IndividualISPPage extends StatelessWidget {
  final String ispTitle;
  final TextEditingController _phNoController = TextEditingController();

  IndividualISPPage({Key? key, required this.ispTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ispTitle,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                'username',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 36,
              child: Expanded(
                child: TextField(
                  maxLength: 20,
                  controller: _phNoController,
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
