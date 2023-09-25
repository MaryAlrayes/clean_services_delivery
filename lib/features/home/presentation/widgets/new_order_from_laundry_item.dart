import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/delivery_action_btn.dart';
import '../../../../core/ui/widgets/order_details/commission_chip.dart';
import '../../../../core/ui/widgets/order_details/distance_chip.dart';
import '../../../../core/utils/enums/order_status_enum.dart';
import '../../data/new_order.dart';
import '../screens/new_order_details_screen.dart';

class NewOrderFromLaundryItem extends StatelessWidget {
  final NewOrder order;
  const NewOrderFromLaundryItem({
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
            NewOrderDetailsScreen.routeName,
            arguments: {
              'order': order,
              'label': AppLocalizations.of(context)!
                  .order_bring_from_client_to_laundry,
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
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildTitle(context),
                            _buildFromTo(context),
                          ],
                        ),
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
          '${AppLocalizations.of(context)!.from}:  ${order.laundry.name}',
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ).copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${AppLocalizations.of(context)!.to}: ${order.user.name}',
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

  Widget _buildCommssion() {
    return CommissionChip(commission: order.commission);
  }

  Widget _buildDistance() {
    return DistanceChip(distance: order.distance);
  }
}
