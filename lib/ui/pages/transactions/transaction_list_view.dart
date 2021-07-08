import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class TransactionListPage extends StatelessWidget {
  const TransactionListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      buildWhen: (previous, current) => previous.hashCode != current.hashCode,
      builder: (context, state) {
        return state.map(
          loading: (a) => loadingPage(),
          loaded: (data) => TransactionBuilder(state: state, items: data.list),
          failure: (a) =>
              const InfoWidget(message: AppConstants.someThingWentWrong),
          failureWithData: (a) =>
              const InfoWidget(message: AppConstants.someThingWentWrong),
        );
      },
    );
  }
}

class TransactionBuilder extends StatefulWidget {
  final TransactionState state;
  final List<TransactionItem> items;
  const TransactionBuilder({Key? key, required this.state, required this.items})
      : super(key: key);

  @override
  _TransactionBuilderState createState() => _TransactionBuilderState();
}

class _TransactionBuilderState extends State<TransactionBuilder>
    with SingleTickerProviderStateMixin {
  DateTime from = DateTime.now().subtract(const Duration(days: 7));
  DateTime to = DateTime.now();
  TabController? _tabController;
  List<TransactionItem> _activeList = [];
  List<TransactionItem> _searchList = [];
  int _currentIndex = 0;
  bool _showFilter = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  TabBar _tabBar() {
    return TabBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      tabs: const [
        Tab(
          child: Text("All"),
        ),
        Tab(
          child: Text("Topup"),
        ),
        Tab(
          child: Text("Purchase"),
        )
      ],
      controller: _tabController,
      indicatorColor: Palette.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentIndex) {
      //ALL
      case 0:
        _activeList = widget.items;
        break;
      //TOPUP
      case 1:
        _activeList = widget.items
            .where((element) => element.transactionType
                .toString()
                .toLowerCase()
                .contains('topup'))
            .toList();
        break;
      //PURCHASE
      case 2:
        _activeList = widget.items
            .where((element) => element.transactionType
                .toString()
                .toLowerCase()
                .contains('purchase'))
            .toList();
        break;

      default:
    }

    final listToShow =
        _searchController.text.isEmpty ? _activeList : _searchList;

    return Column(
      children: [
        _tabBar(),
        _searchWidget(),
        if (_showFilter) _dateFilterWidget(context),
        if (listToShow.isEmpty)
          const InfoWidget(message: 'No data available')
        else
          TransactionListView(items: listToShow)
      ],
    );
  }

  Widget _searchWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: 32,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                  maxLength: 25,
                  onChanged: (s) {
                    setState(() {
                      _searchList.clear();
                      _searchList = _activeList
                          .where((element) =>
                              element.transactionName
                                  .toString()
                                  .toLowerCase()
                                  .contains(s.toLowerCase()) ||
                              element.remarks
                                  .toString()
                                  .toLowerCase()
                                  .contains(s.toLowerCase()) ||
                              element.referenceId
                                  .toString()
                                  .toLowerCase()
                                  .contains(s.toLowerCase()) ||
                              element.topupBy
                                  .toString()
                                  .toLowerCase()
                                  .contains(s.toLowerCase()) ||
                              element.user
                                  .toString()
                                  .toLowerCase()
                                  .contains(s.toLowerCase()))
                          .toList();
                    });
                  },
                  controller: _searchController,
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: const EdgeInsets.only(left: 8),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          // color: Colors.black,
                          width: 0.07,
                          style: BorderStyle.none,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.search, size: 20),
                      prefixIcon: _searchController.text.isEmpty
                          ? null
                          : IconButton(
                              onPressed: () =>
                                  setState(() => _searchController.clear()),
                              icon: const Icon(Icons.close, size: 16)))),
            ),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showFilter = !_showFilter;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Palette.primary,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.filter_alt_rounded,
                    size: 20,
                  ),
                  Text(" Filter")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateFilterWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      height: 60,
      color: Palette.primary,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ElevatedButton(
              onPressed: () async {
                final fromPick = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2018),
                    lastDate: DateTime.now());
                if (fromPick != null) {
                  setState(() {
                    from = fromPick;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Text(
                        "From",
                        textScaleFactor: 0.8,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.calendar_today,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    DateTimeFormatter.formatDate(from.toString()),
                    textScaleFactor: 0.8,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 3,
            child: ElevatedButton(
              onPressed: () async {
                final toPick = await showDatePicker(
                    context: context,
                    initialDate: from,
                    firstDate: from,
                    lastDate: DateTime.now());
                if (toPick != null) {
                  setState(() {
                    to = toPick;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Text(
                        "To",
                        textScaleFactor: 0.8,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.calendar_today,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    DateTimeFormatter.formatDate(to.toString()),
                    textScaleFactor: 0.8,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: () async {
                context.read<TransactionBloc>().add(
                      TransactionEvent.fetchTransactionData(
                          fromDate: DateTimeFormatter.formatDateToApi(from),
                          toDate: DateTimeFormatter.formatDateToApi(to)),
                    );
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text(
                "Show",
                textScaleFactor: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final String message;
  const InfoWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.info,
            size: 25,
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            message,
            textScaleFactor: 1.1,
          )
        ],
      ),
    );
  }
}

class TransactionListView extends StatelessWidget {
  final List<TransactionItem> items;
  const TransactionListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      margin: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (context, index) => const Divider(
          indent: 12,
          endIndent: 12,
        ),
        itemBuilder: (BuildContext context, int index) {
          final transaction = items[index];
          return TransactionViewItem(transaction: transaction);
        },
      ),
    );
  }
}

class TransactionViewItem extends StatelessWidget {
  final TransactionItem transaction;
  const TransactionViewItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(5),
      onTap: () => context.pushRoute(TransactionDetailRoute(item: transaction)),
      leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Palette.primary,
          ),
          child: SizedBox(
            child: SvgPicture.network(
              transaction.icon.toString(),
              fit: BoxFit.scaleDown,
            ),
          )),
      title: Text(
        transaction.transactionName.toString(),
        textScaleFactor: 0.74,
        style: const TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        '''${transaction.transactionType}\n${DateTimeFormatter.formatDate(transaction.createdAt.toString())} - ${DateTimeFormatter.formatTime(transaction.createdAt.toString())}''',
        textScaleFactor: 0.8,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            currencyFormatter(
                value: transaction.topupAmount ?? 0,
                symbol: transaction.currency ?? ''),
            style:
                TextStyle(fontWeight: FontWeight.w700, color: Palette.primary),
          ),
          RichText(
            text: TextSpan(
              text: 'Status: ',
              style: const TextStyle(color: Colors.black, fontSize: 11),
              children: <TextSpan>[
                TextSpan(
                  text: transaction.transactionStatus.toString(),
                  style: TextStyle(color: Palette.primary, fontSize: 11),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
