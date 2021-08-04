import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/news/domain/entity/news_preference.dart';
import 'package:wallet_app/features/news/presentation/news_preference/news_preference_bloc.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class NewsPreferenceTab extends StatelessWidget {
  final Function(int) changePage;

  const NewsPreferenceTab({
    Key? key,
    required this.changePage,
  }) : super(key: key);

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
            preferences: success.genre,
            changePage: changePage,
          ),
        );
      },
    );
  }
}

class _NewsPreferenceTab extends StatefulWidget {
  final List<NewsPreference> preferences;
  final Function(int) changePage;

  const _NewsPreferenceTab({
    Key? key,
    required this.preferences,
    required this.changePage,
  }) : super(key: key);

  @override
  __NewsPreferenceTabState createState() => __NewsPreferenceTabState();
}

class __NewsPreferenceTabState extends State<_NewsPreferenceTab> {
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
                onTap: () {
                  context
                      .read<NewsPreferenceBloc>()
                      .add(const NewsPreferenceEvent.save());
                  DefaultTabController.of(context)?.animateTo(1);
                  widget.changePage(1);
                },
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
                title: widget.preferences[index].name ?? '',
                isSelected: widget.preferences[index].isSelected ?? false,
                isExpanded: true,
                sources: widget.preferences[index].sources ?? [],
                parentIndex: index,
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
  final bool isSelected;
  final bool isExpanded;
  final List<NewsSource> sources;
  final int parentIndex;

  const _LanguageWithSource({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.isExpanded,
    required this.sources,
    required this.parentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => context
                .read<NewsPreferenceBloc>()
                .add(NewsPreferenceEvent.changeTitleStatus(parentIndex)),
            child: Row(
              children: [
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Checkbox(
                    value: isSelected,
                    activeColor: Palette.primary,
                    onChanged: (_) {
                      context.read<NewsPreferenceBloc>().add(
                          NewsPreferenceEvent.changeTitleStatus(parentIndex));
                    },
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
                    onTap: () => context.read<NewsPreferenceBloc>().add(
                          NewsPreferenceEvent.changePreferenceStatus(
                            parentIndex,
                            index,
                          ),
                        ),
                    child: Container(
                      height: 20,
                      margin: const EdgeInsets.only(
                        left: 16.0,
                        top: 16.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (sources[index].isSelected ?? false)
                              ? Palette.primaryButtonColor
                              : Palette.black.withOpacity(0.1),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 2),
                          CachedNetworkImage(
                            imageUrl: sources[index].image ?? "",
                            height: 10,
                            fit: BoxFit.fitWidth,
                          ),
                          const SizedBox(width: 2),
                          Flexible(
                            child: Text(
                              sources[index].name ?? '',
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
