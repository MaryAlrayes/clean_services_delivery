
import 'package:flutter/material.dart';

import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../../../core/ui/widgets/custom_card.dart';
import '../../../../core/ui/widgets/custom_list.dart';
import '../../../../core/ui/widgets/delivery_action_btn.dart';
import '../../../../core/ui/widgets/order_details/order_table_card.dart';
import '../../../../core/utils/Constants/tweens.dart';
import '../../data/order.dart';
import '../widgets/details/current_order_basic_info_card.dart';
import '../widgets/details/current_order_laundry_info_card.dart';
import '../widgets/details/current_order_user_info_card.dart';

class CurrentOrdersDetailsScreen extends StatelessWidget {
  static const routeName = 'current_orders_details_screen';
  final String label;
  final Order order;
  const CurrentOrdersDetailsScreen({
    Key? key,
    required this.label,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [_buildActionBtn()],
      appBar: AppBar(
        title: Text(label),
      ),
      body: Stack(
        children: [
          const Background(),
          Container(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: CustomList(
              keyList:  GlobalKey<AnimatedListState>(),
              items: _addItems(
                context,
              ),
              tween: TweenConstants.verticalTween,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBasicDetails(BuildContext context) {
    return _buildCard(CurrentOrderBasicInfoCard(order: order));
  }

  Row _buildActionBtn() {
    return Row(
      children: [
        Expanded(
          child: DeliveryActionBtn(
            orderStatus: order.orderStatus,
          ),
        ),
      ],
    );
  }

  Widget _buildTable() {
    return _buildCard(
      OrderTableCard(
        data: order.services,
        commission: order.commission,
        price: order.price,
      ),
    );
  }

  Widget _buildUserInfo() {
    return _buildCard(CurrentOrderUserInfoCard(
      user: order.user,
    ));
  }

  Widget _buildLaundryInfo() {
    return _buildCard(
      CurrentOrderLaundryInfoCard(
        laundry: order.laundry,
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
