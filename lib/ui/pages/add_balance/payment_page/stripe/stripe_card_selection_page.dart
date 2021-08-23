import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/load_balance/domain/entities/payment_method.dart';
import 'package:wallet_app/features/load_balance/presentations/delete_card/delete_card_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class StripePaymentCardSelectionPage extends StatefulWidget {
  final List<CreditCard> cards;
  final Function(int) deleteCard;

  const StripePaymentCardSelectionPage({
    Key? key,
    required this.cards,
    required this.deleteCard,
  }) : super(key: key);

  @override
  _StripePaymentCardSelectionPageState createState() =>
      _StripePaymentCardSelectionPageState();
}

class _StripePaymentCardSelectionPageState
    extends State<StripePaymentCardSelectionPage> {
  late List<CreditCard> _cards;

  @override
  void initState() {
    _cards = widget.cards;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeleteCardBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Load Money",
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
        body: _blocConsumer(context),
      ),
    );
  }

  Widget _blocConsumer(BuildContext context) {
    return BlocConsumer<DeleteCardBloc, DeleteCardState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          success: (success) {
            FlushbarHelper.createSuccess(message: 'Successfully deleted card.')
                .show(context);
            final cardId = success.id;
            _cards.removeWhere((element) => element.id == cardId);
            widget.deleteCard(cardId);
          },
          failure: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        if (state == const DeleteCardState.loading()) return loadingPage();
        return _cardList(context);
      },
    );
  }

  Widget _cardList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const BalanceWidget(),
        InkWell(
          onTap: () => context.pushRoute(StripeNewCardPaymentRoute()),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 32.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Palette.dividerColor,
              ),
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/top_up/add-card.svg',
                  color: Palette.primary,
                  height: 25.0,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Top up from New Card',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: _cards.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final maskedCreditCard = (_cards[index].cardNumber ?? '')
                  .replaceAll(RegExp(r'[0-9](?=.*.{4})'), '*');
              return InkWell(
                onTap: () => context.pushRoute(
                  StripeSaveCardPaymentRoute(
                    card: _cards[index],
                  ),
                ),
                child: ShadowBoxWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/top_up/visa.svg',
                        height: 35.0,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_cards[index].name ?? ''),
                          const SizedBox(height: 5),
                          Text(maskedCreditCard),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) => PopUpConfirmation(
                              message: 'Are you sure to delete the card?',
                              onConfirmed: () {
                                context.read<DeleteCardBloc>().add(
                                      DeleteCardEvent.deleteCard(
                                        _cards[index].id,
                                      ),
                                    );
                                context.popRoute();
                              },
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
