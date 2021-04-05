import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class NewsPreferenceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                "Select your favourite Language",
                style: TextStyle(
                  color: Palette.black.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              CustomButton(
                title: "Save",
                onTap: () {},
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.maxFinite,
          color: Palette.black.withOpacity(0.1),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const _LanguageWithSource(
                title: "English",
                isExpanded: true,
                sources: [
                  "cnn",
                  "start Sports",
                  "bbc",
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _LanguageWithSource extends StatelessWidget {
  final String title;
  final bool isExpanded;
  final List<String> sources;

  const _LanguageWithSource({
    Key key,
    @required this.title,
    @required this.isExpanded,
    @required this.sources,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                height: 24.0,
                width: 24.0,
                child: Checkbox(
                  value: false,
                  activeColor: Palette.primary,
                  onChanged: (bool value) {},
                ),
              ),
              Text(
                "$title (${sources.length})",
              ),
              const Spacer(),
              const Text(
                "-",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Flexible(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 3,
              // This creates two columns with two items in each column
              children: List.generate(
                sources.length,
                (index) {
                  return Container(
                    height: 20,
                    margin: const EdgeInsets.only(
                      left: 16.0,
                      top: 16.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Palette.black.withOpacity(0.1),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        sources[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
