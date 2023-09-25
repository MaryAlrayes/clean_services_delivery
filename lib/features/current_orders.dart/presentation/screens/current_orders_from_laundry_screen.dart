
import 'package:flutter/material.dart';

import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../data/order.dart';
import '../widgets/order_item_from_laundry.dart';

class CurrentOrdersFromLaundryScreen extends StatelessWidget {
  const CurrentOrdersFromLaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Stack(children: [
            const Background(),
            _buildOrderList(context),
          ]),
        );
  }


   Container _buildOrderList(BuildContext context) {
   return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return OrderItemFromLaundry(
            order: myOrdersFromLaundry[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 4,
          );
        },
        itemCount: myOrdersFromLaundry.length,
      ),
    );
  }


}
