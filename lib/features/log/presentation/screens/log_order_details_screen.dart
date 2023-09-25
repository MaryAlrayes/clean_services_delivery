
import 'package:flutter/material.dart';

import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../../../core/ui/widgets/custom_card.dart';
import '../../../../core/ui/widgets/custom_list.dart';
import '../../../../core/ui/widgets/order_details/order_table_card.dart';
import '../../../../core/utils/Constants/tweens.dart';
import '../../data/log_order.dart';
import '../widgets/log_order_basic_info.dart';
import '../widgets/log_order_laundry_info.dart';
import '../widgets/log_order_user_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogOrderDetailsScreen extends StatelessWidget {
  static const routeName = 'log_order_details_screen';
  final LogOrder logOrder;
  const LogOrderDetailsScreen({
    Key? key,
    required this.logOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AppLocalizations.of(context)!.order_details} #${logOrder.id}'),
      ),
      body: Stack(
        children: [
          const Background(),
          Container( padding: const EdgeInsets.all(AppPadding.p16),
            child: CustomList(
              keyList:  GlobalKey<AnimatedListState>(),
                items: _addItems(
                  context,
                ),
                tween: TweenConstants.verticalTween),
          )

        ],
      ),
    );
  }

  Widget _buildBasicDetails(BuildContext context) {
    return _buildCard(LogOrderBasicInfo(logOrder: logOrder));
  }

  Widget _buildTable() {
    return _buildCard(
      OrderTableCard(
        data: logOrder.services,
        commission: logOrder.commission,
        price: logOrder.price,
      ),
    );
  }

  Widget _buildUserInfo() {
    return _buildCard(LogOrderUserInfo(
      logUser: logOrder.user,
    ));
  }

  Widget _buildLaundryInfo() {
    return _buildCard(
      LogOrderLaundryInfo(
        laundry: logOrder.laundry,
      ),
    );
  }

  Widget _buildCard(Widget child) {
    return CustomCard(child: child);
  }

  List<Widget> _addItems(
    BuildContext context,
  ) {
    List<Widget> items = [];

    items.add(_buildBasicDetails(context));
    items.add(const SizedBox(
      height: 16,
    ));
    items.add(_buildUserInfo());
    items.add(const SizedBox(
      height: 16,
    ));
    items.add(_buildLaundryInfo());
    items.add(const SizedBox(
      height: 16,
    ));
    items.add(_buildTable());
    items.add(const SizedBox(
      height: 8,
    ));

    return items;
  }
}
