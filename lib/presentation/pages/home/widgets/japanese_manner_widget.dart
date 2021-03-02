import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/data/model/japanese_manner_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class JapaneseMannerWidget extends StatelessWidget {
  final List<JapaneseMannerModel> data;
  const JapaneseMannerWidget({
    Key key,
    @required this.data,
  })  : assert(data != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const CategoryTitleWidget(title: "Japanese Manner"),
              const Spacer(),
              Text(
                "1/${data.length}",
                style: const TextStyle(
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
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return getServiceItem(context, data[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getServiceItem(BuildContext context, JapaneseMannerModel data) {
    final baseURL = getIt<ConfigReader>().baseURL;
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
            child: Image.network(
              "$baseURL${data.image}",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data.title ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.justify,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          const Spacer(),
          CustomButton(
            title: data?.category?.categoryName ?? "",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
