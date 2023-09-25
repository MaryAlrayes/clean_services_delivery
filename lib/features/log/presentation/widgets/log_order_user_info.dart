
import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/label_card.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/name_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/phone_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/user_location_section.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_user.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LogOrderUserInfo extends StatelessWidget {
  final LogUser logUser;
  const LogOrderUserInfo({
    Key? key,
    required this.logUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
    return UserLocationSection(userLocation: logUser.logUserLocation);
  }

  Widget _buildPhone() {
    return PhoneNumber(phone: logUser.phone);
  }

  Widget _buildName() {
    return NameSection(name: logUser.name);
  }

  Widget _buildLabel(BuildContext context) {
    return  LabelCard(label:  AppLocalizations.of(context)!.client_info);
  }
}
