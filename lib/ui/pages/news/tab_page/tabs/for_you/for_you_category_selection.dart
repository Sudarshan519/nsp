import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_genre.dart';
import 'package:wallet_app/features/news/presentation/news_genre/news_genre_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class ForYouCategorySelectionPage extends StatelessWidget {
  final Function() editGenre;

  const ForYouCategorySelectionPage({
    Key key,
    @required this.editGenre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsGenreBloc, NewsGenreState>(
      builder: (context, state) {
        return state.map(
          failure: (failure) {
            return const SizedBox.shrink();
          },
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _ForYouCategorySelectionPage(
            genres: success?.genre ?? [],
            editGenre: editGenre,
          ),
        );
      },
    );
  }
}

class _ForYouCategorySelectionPage extends StatefulWidget {
  final Function() editGenre;
  final List<Genre> genres;

  const _ForYouCategorySelectionPage({
    Key key,
    @required this.genres,
    @required this.editGenre,
  })  : assert(editGenre != null),
        super(key: key);

  @override
  __ForYouCategorySelectionPageState createState() =>
      __ForYouCategorySelectionPageState();
}

class __ForYouCategorySelectionPageState
    extends State<_ForYouCategorySelectionPage> {
  void onTapGenre(int index) {
    setState(
      () {
        widget.genres[index].isSelected = !widget.genres[index].isSelected;
      },
    );
  }

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
            children: getGeneres(widget.genres, onTapGenre),
          ),
          const Spacer(),
          const SizedBox(height: 10),
          InkWell(
            onTap: widget.editGenre,
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

  List<Widget> getGeneres(List<Genre> genres, Function(int) callback) {
    final List<Widget> widgets = [];
    int index = 0;
    for (final genre in genres) {
      widgets.add(
        InkWell(
          onTap: () => callback(index),
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Palette.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(20),
              color: genre.isSelected
                  ? Palette.primary
                  : Palette.black.withOpacity(0.1),
            ),
            child: Text(
              genre.name,
              style: TextStyle(
                  color: genre.isSelected ? Palette.white : Palette.black),
            ),
          ),
        ),
      );
      index = index + 1;
    }
    return widgets;
  }
}
