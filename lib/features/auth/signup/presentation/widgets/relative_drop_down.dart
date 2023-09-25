// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/core/utils/extensions/extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RelativeDropDown extends StatefulWidget {
  final Relative? selected;
  const RelativeDropDown({
    Key? key,
    this.selected,
  }) : super(key: key);

  @override
  State<RelativeDropDown> createState() => _RelativeDropDownState();
}

class _RelativeDropDownState extends State<RelativeDropDown> {
  Relative? selected;
  @override
  void initState() {
        super.initState();
        selected=widget.selected;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorManager.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          child: DropdownButton<Relative>(
            value: selected,
            hint: Text(AppLocalizations.of(context)!.choose_relative_relation),
            items: Relative.values
                .map((e) => _buildDropMenuItem(context, e))
                .toList(),
            onChanged: ((value) {
              setState(() {
                selected = value;
              });
            }),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<Relative> _buildDropMenuItem(
      BuildContext context, Relative e) {
    return DropdownMenuItem(
      value: e,
      child: Text(
        e.displayText(context),
        style: getRegularStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
