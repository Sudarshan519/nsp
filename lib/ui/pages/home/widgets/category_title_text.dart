import 'package:flutter/material.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;

  const CategoryTitleWidget({Key? key, required this.title})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
