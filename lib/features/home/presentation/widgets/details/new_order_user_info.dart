import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/label_card.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/map_btn.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/name_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/phone_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/user_location_section.dart';
import 'package:saudi_clean_services_delivery/features/home/data/new_user.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class NewOrderUserInfo extends StatelessWidget {
  final NewUser user;
  const NewOrderUserInfo({
    Key? key,
    required this.user,
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
            _buildMapBtn(),
          ],
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
    return UserLocationSection(userLocation: user.userLocation);
  }

  Widget _buildPhone() {
    return PhoneNumber(phone: user.phone);
  }

  Widget _buildName() {
    return NameSection(name: user.name);
  }

  Widget _buildMapBtn() {
    return MapBtn(lat: user.lat, lng: user.lng);
  }

  Widget _buildLabel(BuildContext context) {
    return  LabelCard(label: AppLocalizations.of(context)!.client_info);
  }
}
