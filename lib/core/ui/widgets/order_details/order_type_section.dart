import 'package:flutter/material.dart';

import '../../../managers/color_manager.dart';
import '../../../managers/font_manager.dart';
import '../../../managers/styles_manager.dart';
import '../../../utils/enums/enums.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderTypeSection extends StatelessWidget {
  final LogOrderType logOrderType;
  const OrderTypeSection({
    Key? key,
    required this.logOrderType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getText(context),
      style: getMediumStyle(
        color: ColorManager.secondary,
        fontSize: FontSize.s16,
      ),
    );
  }

  String _getText(BuildContext context) {
    switch (logOrderType) {
      case LogOrderType.fromClient:
        return AppLocalizations.of(context)!.order_bring_from_client_to_laundry;
      case LogOrderType.fromLaundry:
        return AppLocalizations.of(context)!.order_bring_form_laundry_to_client;
    }
  }
}
