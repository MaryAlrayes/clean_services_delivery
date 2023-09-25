import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/managers/values_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../../../core/ui/widgets/custom_card.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../drawer_navigation/presentation/widgets/custom_drawer.dart';
import '../../data/delivery.dart';
import 'edit_profile_screen.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.profile_nav),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, EditProfileScreen.routeName,
                  arguments: {'delivery': delivery});
            },
            icon: const Icon(
              Icons.edit,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          const Background(),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorManager.primary,
                ),
              ),
              child: CustomCard(
                child: _buildContent(context),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container _buildContent(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildName(),
          const SizedBox(
            height: 8,
          ),
          _buildPhone(),
          const SizedBox(
            height: 8,
          ),
          _buildLocation(),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 8,
          ),
          _buildRelativeInfo(context),
          const SizedBox(
            height: 8,
          ),
          _buildCarInfo(context)
        ],
      ),
    );
  }

  Widget _buildPhone() {
    return Text(delivery.phone,
        style: getMediumStyle(
          color: Colors.black,
          fontSize: FontSize.s16,
        ),
        textAlign: TextAlign.center);
  }

  Text _buildName() {
    return Text(
      delivery.name,
      style: getBoldStyle(
        color: Colors.black,
        fontSize: FontSize.s24,
      ),
      textAlign: TextAlign.center,
    );
  }

  Row _buildLocation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          size: 20,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(delivery.city,
            style: getMediumStyle(
              color: Colors.black,
              fontSize: FontSize.s16,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildRelativeInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           AppLocalizations.of(context)!.relative_info,
            style: getSemiBoldStyle(
              color: ColorManager.primary,
              fontSize: FontSize.s18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${AppLocalizations.of(context)!.relative_relation}: ',
                style: getMediumStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s18,
                ),
              ),
              Expanded(

                child: Text(
                  delivery.relative.displayText(context),
                  style: getMediumStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${AppLocalizations.of(context)!.his_phone_number}: ',
                style: getMediumStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s18,
                ),
              ),
              Expanded(

                child: Text(
                  delivery.phone,
                  style: getMediumStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCarInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           AppLocalizations.of(context)!.vehicle_info,
            style: getSemiBoldStyle(
              color: ColorManager.primary,
              fontSize: FontSize.s18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${AppLocalizations.of(context)!.vehicle_type}: ',
                style: getMediumStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s18,
                ),
              ),
              Expanded(

                child: Text(
                  delivery.carType,
                  style: getMediumStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${AppLocalizations.of(context)!.vehicle_color}: ',
                style: getMediumStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(

                child: Text(
                  delivery.color,
                  style: getMediumStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '${AppLocalizations.of(context)!.vehicle_id}: ',
                style: getMediumStyle(
                  color: ColorManager.primary,
                  fontSize: FontSize.s18,
                ),
              ),
              Expanded(
             
                child: Text(
                  delivery.carNumber,
                  style: getMediumStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
