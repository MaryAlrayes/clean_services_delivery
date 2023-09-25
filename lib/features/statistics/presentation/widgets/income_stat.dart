

import 'package:flutter/material.dart';

import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import '../../../../core/utils/helpers/format_number.dart';
import 'stat_card.dart';

class IncomeStat extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final double amount;
  final String currency;
  const IncomeStat({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.amount,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatCard(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: getBoldStyle(
                  color: Colors.white,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
                // Icon(
                //   icon,
                //   color: Colors.white,
                //   size: 16,
                // ),
                // const SizedBox(
                //   width: 4,
                // ),
                // Text(
                //   '($subtitle)',
                //   style: getRegularStyle(
                //     color: Colors.white,
                //     fontSize: FontSize.s16,
                //   ),
                // ),
            //   ],
            // ),
            const SizedBox(
              height: 16,
            ),
            Text(
              formatNumber(amount),
              style: getSemiBoldStyle(
                color: Colors.yellow,
                fontSize: FontSize.s24,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              currency,
              style: getRegularStyle(
                color: Colors.yellow,
                fontSize: FontSize.s14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
