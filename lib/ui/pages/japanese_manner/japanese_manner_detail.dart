import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/features/japanese_manners/presentation/japanese_manner_detail_bloc/japanese_manner_detail_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class JPMannerDetailFromAPiPage extends StatelessWidget {
  final int id;
  const JPMannerDetailFromAPiPage({Key? key, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JapaneseMannerDetailBloc>()
        ..add(
          JapaneseMannerDetailEvent.getJPMannerDetail(id),
        ),
      child: BlocBuilder<JapaneseMannerDetailBloc, JapaneseMannerDetailState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
            loading: (e) => Scaffold(body: loadingPage()),
            loadedIndividual: (e) =>
                JapaneseMannerDetailPage(japaneseManner: e.item),
            failure: (e) => const SizedBox(),
          );
        },
      ),
    );
  }
}

@RoutePage()
class JapaneseMannerDetailPage extends StatelessWidget {
  final JapaneseManner japaneseManner;

  const JapaneseMannerDetailPage({
    Key? key,
    required this.japaneseManner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          japaneseManner.title ?? "",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: newsBody(context),
    );
  }

  Widget newsBody(BuildContext context) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            japaneseManner.title ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Html(
                      data: japaneseManner.description,
                      onLinkTap: (link, _, __) {
                        context.pushRoute(
                            AppWebViewRoute(url: link ?? '', title: ''));
                      }),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
