import 'package:flutter/cupertino.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/order_status_enum.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
extension RelativeExtension on Relative {
  String displayText(BuildContext context) {
    switch (this) {
      case Relative.relative:
        return AppLocalizations.of(context)!.relative;
      case Relative.friend:
        return AppLocalizations.of(context)!.friend;
      case Relative.sponser:
        return AppLocalizations.of(context)!.sponsor;
      case Relative.other:
        return AppLocalizations.of(context)!.other;
    }
  }
}
extension NationalityExtension on Nationality {
  String displayText(BuildContext context) {
    switch (this) {
      case Nationality.saudi:
        return AppLocalizations.of(context)!.saudi_nationality;

      case Nationality.nonSaudi:
        return AppLocalizations.of(context)!.non_saudi;
    }
  }

}

extension LogOrderTypeExtension on LogOrderType {
  String displayText(BuildContext context) {
    switch (this) {

      case LogOrderType.fromClient:
        return  AppLocalizations.of(context)!.orders_bring_from_client;
      case LogOrderType.fromLaundry:
        return AppLocalizations.of(context)!.orders_bring_from_laundry;

    }
  }
}

extension ServiceTypeExtension on ServiceType {
  String displayText(BuildContext context) {
    switch (this) {
      case ServiceType.heavy:
        return AppLocalizations.of(context)!.heavy_item_weight;
      case ServiceType.light:
        return AppLocalizations.of(context)!.light_item_weight;
    }
  }
}
