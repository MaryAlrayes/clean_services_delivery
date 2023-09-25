import 'package:flutter/material.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/delivery_action_btn.dart';
import '../../../../core/ui/widgets/order_details/commission_chip.dart';
import '../../../../core/ui/widgets/order_details/distance_chip.dart';
import '../../../../core/utils/enums/order_status_enum.dart';
import '../../../../core/utils/extensions/order_status_extension.dart';
import '../../data/order.dart';
import '../screens/current_orders_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderItemFromClient extends StatelessWidget {
  final Order order;
  const OrderItemFromClient({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            CurrentOrdersDetailsScreen.routeName,
            arguments: {
              'order': order,
              'label': AppLocalizations.of(context)!.order_bring_from_client,
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildTitle(context),
                          _buildStatus(context),
                          _buildFromTo(context),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                        alignment: Alignment.topCenter,
                        child: _buildDeliveryBtn(context, order.orderStatus)),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildDistance(),
                    _buildCommssion(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryBtn(BuildContext context, OrderStatus orderStatus) {
    return DeliveryActionBtn(orderStatus: orderStatus);
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.order} #${order.id}',
          style: getBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s18,
          ),
        ),
      ],
    );
  }

  Widget _buildFromTo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.from}:  ${order.user.name}',
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ).copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${AppLocalizations.of(context)!.to}: ${order.laundry.name}',
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ).copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.history,
          color: ColorManager.secondary,
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Text(
            order.orderStatus.displayText(context),
            style: getMediumStyle(
              color: ColorManager.secondary,
              fontSize: FontSize.s16,
            ).copyWith(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCommssion() {
    return CommissionChip(commission: order.commission);
  }

  Widget _buildDistance() {
    return DistanceChip(distance: order.distance);
  }
}
