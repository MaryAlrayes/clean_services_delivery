
import 'package:flutter/material.dart';

import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import 'stat_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class OrdersNumberThisWeek extends StatelessWidget {
  const OrdersNumberThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return StatCard(
      child: Padding(
        padding: const EdgeInsets.all(
          AppPadding.p8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
            AppLocalizations.of(context)!.order_number_this_week_label,
              style: getBoldStyle(
                color: Colors.white,
                fontSize: FontSize.s18,
              ),
            ),
            Text(
              '30',
              style: getSemiBoldStyle(
                color: Colors.white,
                fontSize: FontSize.s22,
              ),
            ),

          ],
        ),
      ),
    );;
  }
}
