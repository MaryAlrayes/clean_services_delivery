// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/commission_chip.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/distance_chip.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/status_order_section.dart';

import 'package:saudi_clean_services_delivery/features/home/data/new_order.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class NewOrderBasicInfo extends StatelessWidget {
  final NewOrder order;
  const NewOrderBasicInfo({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildOrderId(context),
            _buildDate(context),
          ],
        ),
        _buildStatusOrder(context),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            _buildDistance(),
            const SizedBox(
              width: 8,
            ),
            _buildMoney()
          ],
        ),
      ],
    );
  }

  Text _buildOrderId(BuildContext context) {
    return Text(
      '${AppLocalizations.of(context)!.order} #${order.id}',
      style: getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s18),
    );
  }

  Widget _buildStatusOrder(BuildContext context) {
    return StatusOrderSection(orderStatus: order.orderStatus);
  }

  Widget _buildDate(BuildContext context) {
    return Text(AppLocalizations.of(context)!.custom_date(DateTime.now()),style: getRegularStyle(color: Colors.grey),);
  }

  Widget _buildDistance() {
    return DistanceChip(distance: order.distance);
  }

  Widget _buildMoney() {
    return CommissionChip(commission: order.commission);
  }

}
