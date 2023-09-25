import 'package:flutter/material.dart';
import '../../../../features/current_orders.dart/data/user.dart';
import '../../../managers/color_manager.dart';
import '../../../managers/font_manager.dart';
import '../../../managers/styles_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class UserLocationSection extends StatelessWidget {
  final UserLocation userLocation;
  const UserLocationSection({
    Key? key,
    required this.userLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.location_on,
          color: ColorManager.secondary,
        ),
        const SizedBox(width: 16,),
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.city,
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    Text(
                      userLocation.cityName,
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ],
                ),
              ),
               const SizedBox(
                width: 6,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.building_number,
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                     Text(
                      '${userLocation.buildingNumber}',
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.floor_number,
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                     Text(
                      '${userLocation.floorNumber}',
                      style: getRegularStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );;
  }
}
