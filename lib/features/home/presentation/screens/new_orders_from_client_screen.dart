

import 'package:flutter/material.dart';

import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../data/new_order.dart';
import '../widgets/new_order_from_client_item.dart';

class NewOrdersFromClientList extends StatelessWidget {
  const NewOrdersFromClientList({super.key});

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
          return NewOrderFromClientItem(
            order: newOrdersFromClient[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 4,
          );
        },
        itemCount: newOrdersFromClient.length,
      ),
    );
  }
}

