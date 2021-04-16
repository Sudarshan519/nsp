import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/presentation/news_preference/news_preference_bloc.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class NewsPreferenceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsPreferenceBloc, NewsPreferenceState>(
      builder: (context, state) {
        return state.map(
          failure: (failure) {
            return const SizedBox.shrink();
          },
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loaded: (success) => _NewsPreferenceTab(
            preferences: success?.genre ?? [],
          ),
        );
      },
    );
  }
}

class _NewsPreferenceTab extends StatefulWidget {
  final List<NewsPreference> preferences;

  const _NewsPreferenceTab({
    Key key,
    @required this.preferences,
  }) : super(key: key);

  @override
  __NewsPreferenceTabState createState() => __NewsPreferenceTabState();
}

class __NewsPreferenceTabState extends State<_NewsPreferenceTab> {
  void onTapPreference(int parentIndex, int index) {
    setState(() {
      widget.preferences[parentIndex].sources[index].isSelected =
          !widget.preferences[parentIndex].sources[index].isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            itemCount: widget.preferences.length,
            itemBuilder: (context, index) {
              return _LanguageWithSource(
                title: widget.preferences[index].name,
                isExpanded: true,
                sources: widget.preferences[index].sources,
                parentIndex: index,
                callback: onTapPreference,
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
  final List<NewsSource> sources;
  final Function(int, int) callback;
  final int parentIndex;

  const _LanguageWithSource({
    Key key,
    @required this.title,
    @required this.isExpanded,
    @required this.sources,
    @required this.parentIndex,
    @required this.callback,
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
                  return InkWell(
                    onTap: () => callback(parentIndex, index),
                    child: Container(
                      height: 20,
                      margin: const EdgeInsets.only(
                        left: 16.0,
                        top: 16.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: sources[index].isSelected
                              ? Palette.primaryButtonColor
                              : Palette.black.withOpacity(0.1),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          Image.network(
                            sources[index].image ?? "",
                            height: 10,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(width: 2),
                          Flexible(
                            child: Text(
                              sources[index].name,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
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
