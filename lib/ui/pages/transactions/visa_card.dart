import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(28),
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(width: 3, color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Card icon
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  // borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 3),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                  // width: 4,
                  // height: 4,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 8,
                      width: 160,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 5,
                      width: 120,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CircleAvatar(radius: 22, backgroundColor: Colors.red),
              Transform.translate(
                  offset: const Offset(-8.0, 0),
                  child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.lightGreenAccent.shade400)),
            ],
          )
        ],
      ),
    );
  }
}
