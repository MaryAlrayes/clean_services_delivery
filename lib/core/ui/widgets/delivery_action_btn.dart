import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/enums/order_status_enum.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeliveryActionBtn extends StatelessWidget {
  final OrderStatus orderStatus;
  const DeliveryActionBtn({
    Key? key,
    required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (orderStatus == OrderStatus.onWay_to_deliver_to_client) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context)!.i_delivered),
      );
    } else if (orderStatus == OrderStatus.onWay_to_recieve_from_client) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          AppLocalizations.of(context)!.i_received,
        ),
      );
    } else if (orderStatus == OrderStatus.pending_acceptance_delivery) {
      return ElevatedButton.icon(
        icon: const Icon(
          FontAwesomeIcons.solidHandPointUp,
          size: 14,
        ),
        onPressed: () {},
        label: Text(
          AppLocalizations.of(context)!.i_will_recieve,
        ),
      );
    } else if (orderStatus == OrderStatus.ready_to_deliver) {
      return ElevatedButton.icon(
        icon: const Icon(
          FontAwesomeIcons.solidHandPointUp,
          size: 14,
        ),
        onPressed: () {},
        label: Text(
          AppLocalizations.of(context)!.i_will_recieve,
        ),
      );
    } else {
      return Container();
    }
  }
}
