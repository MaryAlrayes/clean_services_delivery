// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/helpers/format_number.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CommissionChip extends StatelessWidget {
  final num commission;
  const CommissionChip({
    Key? key,
    required this.commission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: const Color(0xffF4F4F4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      label: Text(
        '${formatNumber(commission)} ${AppLocalizations.of(context)!.saudi_currency_abb}',
        textAlign: TextAlign.center,
        style: getRegularStyle(color: Colors.black87),
      ),
      avatar: const Icon(
        FontAwesomeIcons.coins,
        size: 16,
        color: Colors.green,
      ),
    );
  }
}
