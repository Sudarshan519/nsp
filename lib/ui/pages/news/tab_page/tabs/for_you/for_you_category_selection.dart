import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ForYouCategorySelectionPage extends StatelessWidget {
  final Function() editGenre;
  final List<String> genres = [
    "Politics",
    "International",
    "It & Technologies",
    "Entertainment",
    "Education",
    "Business",
    "Work",
    "Sports",
    "Health",
  ];
  ForYouCategorySelectionPage({
    Key key,
    @required this.editGenre,
  })  : assert(editGenre != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "Subscribe to topics of interest to surface the stories you wanted to read",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Wrap(
            runSpacing: 16.0,
            spacing: 16.0,
            alignment: WrapAlignment.center,
            children: getGeneres(genres),
          ),
          const Spacer(),
          const SizedBox(height: 10),
          InkWell(
            onTap: editGenre,
            child: Container(
              height: 40,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Palette.primaryButtonColor,
              ),
              child: Center(
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 12,
                    color: Palette.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getGeneres(List<String> genres) {
    final List<Widget> widgets = [];
    for (final genre in genres) {
      widgets.add(
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Palette.black.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(20),
            color: Palette.black.withOpacity(0.1),
          ),
          child: Text(
            genre,
          ),
        ),
      );
    }
    return widgets;
  }
}
