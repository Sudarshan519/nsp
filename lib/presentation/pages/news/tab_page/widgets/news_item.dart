import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.accent,
                      ),
                      child: Text(
                        "source",
                        style: TextStyle(
                          color: Palette.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Shark and ray populations have dropped 70% and are nearing 'point' Shark and ray populations have dropped 70% and are nearing",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "cnn | Thu, 28 Jan 2021 12:25:24 GMT",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 80,
                color: Palette.primary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 1,
          color: Palette.black.withOpacity(0.05),
        )
      ],
    );
  }
}
