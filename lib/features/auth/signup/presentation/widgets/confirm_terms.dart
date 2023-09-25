import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmTerms extends StatefulWidget {
  const ConfirmTerms({super.key});

  @override
  State<ConfirmTerms> createState() => _ConfirmTermsState();
}

class _ConfirmTermsState extends State<ConfirmTerms> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            }),
        Text("${AppLocalizations.of(context)!.i_agree} "),
        Text(
          AppLocalizations.of(context)!.conditions_terms,
          style: getBoldStyle(color: ColorManager.primary),
        ),
      ]),
    );
  }
}
