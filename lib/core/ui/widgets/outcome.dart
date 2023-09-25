import 'package:flutter/material.dart';

import '../../managers/font_manager.dart';
import '../../managers/styles_manager.dart';
import '../../managers/values_manager.dart';

class Outcome extends StatelessWidget {
  const Outcome({super.key});

  @override
  Widget build(BuildContext context) {
    return _money();
  }

  Widget _money() {
    return Container(
    width: 170,
    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.wallet,
          color: Colors.white,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '150 +',
          style: getSemiBoldStyle(
            color: Colors.white,
            fontSize: FontSize.s18,
          ),
        )
      ],
    ),
      );
  }
}
