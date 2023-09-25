// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';

import 'package:saudi_clean_services_delivery/core/utils/enums/order_status_enum.dart';
import 'package:saudi_clean_services_delivery/core/utils/extensions/order_status_extension.dart';

class StatusOrderSection extends StatelessWidget {
  final OrderStatus orderStatus;
  const StatusOrderSection({
    Key? key,
    required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Text(orderStatus.displayText(context),
              style: getMediumStyle(
                color: ColorManager.secondary,
                fontSize: FontSize.s16,
              )),
        )
      ],
    );
  }
}
