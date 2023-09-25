import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/core/utils/extensions/extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class NationalityDropDown extends StatefulWidget {
  const NationalityDropDown({super.key});

  @override
  State<NationalityDropDown> createState() => _NationalityDropDownState();
}

class _NationalityDropDownState extends State<NationalityDropDown> {
  Nationality? selected;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      decoration: BoxDecoration(
     border: Border.all(color: ColorManager.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          child: DropdownButton<Nationality>(
            value: selected,
            hint:  Text(AppLocalizations.of(context)!.choose_nationality),
            items: Nationality.values
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

  DropdownMenuItem<Nationality> _buildDropMenuItem(
      BuildContext context, Nationality e) {
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
