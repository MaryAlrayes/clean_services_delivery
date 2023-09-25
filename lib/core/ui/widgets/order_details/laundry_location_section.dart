

import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LaundryLocationSection extends StatelessWidget {
  final String cityName;
  const LaundryLocationSection({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.location_on,
          color: ColorManager.secondary,
        ),const SizedBox(width: 16,),
        Flexible(
          child: Text(
            '${AppLocalizations.of(context)!.city}: $cityName',
            style: getRegularStyle(
              color: Colors.black,
              fontSize: FontSize.s16,
            ),
          ),
        )
      ],
    );
  }
}
