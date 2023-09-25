
import 'package:flutter/material.dart';

import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../data/new_order.dart';
import '../widgets/new_order_from_laundry_item.dart';

class NewOrdersFromLaundryList extends StatelessWidget {
  const NewOrdersFromLaundryList({super.key});

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
          return NewOrderFromLaundryItem(
            order:newOrdersFromLaundry[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 4,
          );
        },
        itemCount: newOrdersFromLaundry.length,
      ),
    );
  }


}
