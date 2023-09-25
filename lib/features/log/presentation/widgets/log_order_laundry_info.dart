
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/ui/widgets/order_details/label_card.dart';
import '../../../../core/ui/widgets/order_details/laundry_location_section.dart';
import '../../../../core/ui/widgets/order_details/name_section.dart';
import '../../../../core/ui/widgets/order_details/phone_section.dart';
import '../../data/log_laundry.dart';

class LogOrderLaundryInfo extends StatelessWidget {
  final LogLaundry laundry;
  const LogOrderLaundryInfo({
    Key? key,
    required this.laundry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel(context),
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        _buildName(),
        const SizedBox(
          height: 22,
        ),
        _buildPhone(),
        const SizedBox(
          height: 22,
        ),
        _buildLocation(),
      ],
    );
  }

  Widget _buildLocation() {
    return LaundryLocationSection(cityName: laundry.cityName);
  }

  Widget _buildPhone() {
    return PhoneNumber(phone: laundry.phone);
  }

  Widget _buildName() {
    return NameSection(name: laundry.name);
  }

  Widget _buildLabel(BuildContext context) {
    return  LabelCard(label:  AppLocalizations.of(context)!.laundry_info);
  }
}
