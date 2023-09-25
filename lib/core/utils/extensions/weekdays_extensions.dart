import 'package:flutter/cupertino.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/weekdays.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
extension WeekdaysExtension on WeekDays {
  String displayText(BuildContext context) {
    switch (this) {
      case WeekDays.Monday:
        return AppLocalizations.of(context)!.monday;
      case WeekDays.Tuesday:
        return AppLocalizations.of(context)!.tuesday;
      case WeekDays.Wednesday:
        return AppLocalizations.of(context)!.wednesday;
      case WeekDays.Thuresday:
        return AppLocalizations.of(context)!.thuresday;
      case WeekDays.Friday:
        return AppLocalizations.of(context)!.friday;
      case WeekDays.Saturday:
        return AppLocalizations.of(context)!.saturday;
      case WeekDays.Sunday:
        return AppLocalizations.of(context)!.sunday;
    }
  }

   String displayAbbreviation(BuildContext context) {
    switch (this) {
      case WeekDays.Monday:
        return 'M';
      case WeekDays.Tuesday:
        return 'T';
      case WeekDays.Wednesday:
        return 'W';
      case WeekDays.Thuresday:
        return 'T';
      case WeekDays.Friday:
        return 'F';
      case WeekDays.Saturday:
        return 'S';
      case WeekDays.Sunday:
        return 'S';
    }
  }
}
