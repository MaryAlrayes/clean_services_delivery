import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/label_card.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/laundry_location_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/map_btn.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/name_section.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/order_details/phone_section.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/laundry.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CurrentOrderLaundryInfoCard extends StatelessWidget {
  final Laundry laundry;
  const CurrentOrderLaundryInfoCard({super.key, required this.laundry});

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
    return LaundryLocationSection(cityName: laundry.cityName);
  }

  Widget _buildPhone() {
    return PhoneNumber(phone: laundry.phone);
  }

  Widget _buildName() {
    return NameSection(name: laundry.name);
  }

  Widget _buildMapBtn() {
    return MapBtn(lat: laundry.lat, lng: laundry.lng);
  }

  Widget _buildLabel(BuildContext context) {
    return  LabelCard(label: AppLocalizations.of(context)!.laundry_info);
  }
}
