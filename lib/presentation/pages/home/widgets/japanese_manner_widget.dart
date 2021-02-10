import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class JapaneseMannerWidget extends StatelessWidget {
  const JapaneseMannerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: const [
              CategoryTitleWidget(title: "Japanese Manner"),
              Spacer(),
              Text(
                "1/8",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            color: Palette.white,
            height: 280,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return getServiceItem(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getServiceItem(BuildContext context) {
    return Container(
      color: Palette.white,
      width: MediaQuery.of(context).size.width * 0.45,
      margin: const EdgeInsets.only(
        top: 8,
        bottom: 16,
        right: 8,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palette.primaryBackground,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.justify,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          CustomButton(
            title: "Education",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
