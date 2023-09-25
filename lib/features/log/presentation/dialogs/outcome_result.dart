import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import '../bloc/bloc/outcome_bloc.dart';
void showTotalDialog(
    BuildContext context, double outcome, OutcomeBloc outcomeBloc) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
            child: Padding(
              padding: const EdgeInsets.all(
                AppPadding.p16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppLocalizations.of(context)!.outcome_for_this_week ,
                    textAlign: TextAlign.center,
                    style: getBoldStyle(
                      color: ColorManager.primary,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    AppLocalizations.of(context)!.value_wiil_be_added_to_proceeds,
                    textAlign: TextAlign.center,
                    style: getRegularStyle(
                      color: ColorManager.secondary,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    _getMoney(outcome),
                    style: getMediumStyle(
                      color: Colors.black,
                      fontSize: FontSize.s18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text( AppLocalizations.of(context)!.saudi_currency),
                  const SizedBox(
                    height: 16,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        outcomeBloc.add(
                          DoneOutcomeEvent(),
                        );
                        Navigator.pop(context);
                      },
                      child: Text( AppLocalizations.of(context)!.back,),)
                ],
              ),
            ),
          ));
}

String _getMoney(double money) {
  if (money > 0) {
    return '+ $money';
  } else if (money < 0) {
    return '- $money';
  } else {
    return '0';
  }
}
