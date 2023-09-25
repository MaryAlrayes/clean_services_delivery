
import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/commission_chip.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/distance_chip.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/order_type_section.dart';

import 'package:saudi_clean_services_delivery/features/log/data/log_order.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogOrderBasicInfo extends StatelessWidget {
  final LogOrder logOrder;
  const LogOrderBasicInfo({
    Key? key,
    required this.logOrder,
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
        _buildOrderType(),
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

  OrderTypeSection _buildOrderType() =>
      OrderTypeSection(logOrderType: logOrder.logOrderType);

  Text _buildOrderId(BuildContext context) {
    return Text(
      '${AppLocalizations.of(context)!.order} ${logOrder.id}#',
      style: getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s18),
    );
  }

  Widget _buildDate(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.custom_date_time(DateTime.now()),
      style: getRegularStyle(color: Colors.grey),
    );
  }

  Widget _buildDistance() {
    return DistanceChip(distance: logOrder.distance);
  }

  Widget _buildMoney() {
    return CommissionChip(commission: logOrder.commission);
  }
}
