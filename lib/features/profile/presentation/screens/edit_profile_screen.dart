// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/custom_label.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/custom_text_field.dart';
import 'package:saudi_clean_services_delivery/features/auth/signup/presentation/widgets/location_drop_down.dart';
import 'package:saudi_clean_services_delivery/features/auth/signup/presentation/widgets/relative_drop_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:saudi_clean_services_delivery/features/profile/data/delivery.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = 'edit_profile_screen';
  final Delivery delivery;
  const EditProfileScreen({
    Key? key,
    required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
         AppLocalizations.of(context)!.edit_profile
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildNameField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildPhoneRelativeField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildRelativeDopDown(context),
                const SizedBox(
                  height: 12,
                ),
                _buildLocationField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildCarTypeField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildColorCarField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildCarNumberField(context),
                const SizedBox(
                  height: 12,
                ),
                _buildSubmitCloseBtn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return CustomLabel(text: label);
  }

  Widget _buildNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(AppLocalizations.of(context)!.name),
        const SizedBox(
          height: 4,
        ),
        CustomTextField(
            initalValue: delivery.name,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.text,
            hintText: AppLocalizations.of(context)!.name,
            iconData: (Icons.person),
            validator: () {},
            isObscure: false),
      ],
    );
  }

  Widget _buildPhoneRelativeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(AppLocalizations.of(context)!.relative_phone_number),
        const SizedBox(
          height: 4,
        ),
        CustomTextField(
            initalValue: delivery.phone,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.phone,
            hintText: AppLocalizations.of(context)!.relative_phone_number,
            iconData: (Icons.phone),
            validator: () {},
            isObscure: false),
      ],
    );
  }

  Widget _buildRelativeDopDown(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel(AppLocalizations.of(context)!.relative_relation),
        const SizedBox(
          height: 4,
        ),
        RelativeDropDown(selected: delivery.relative),
      ],
    );
  }

  Widget _buildLocationField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel(AppLocalizations.of(context)!.location),
        const SizedBox(
          height: 4,
        ),
        LocationDropDown(selected: delivery.city),
      ],
    );
  }

  Widget _buildCarNumberField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(AppLocalizations.of(context)!.vehicle_id),
        const SizedBox(
          height: 4,
        ),
        CustomTextField(
            initalValue: delivery.carNumber,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.number,
            hintText: AppLocalizations.of(context)!.vehicle_id,
            iconData: (Icons.numbers),
            validator: () {},
            isObscure: false),
      ],
    );
  }

  Widget _buildCarTypeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(AppLocalizations.of(context)!.vehicle_type),
        const SizedBox(
          height: 4,
        ),
        CustomTextField(
            initalValue: delivery.carType,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.text,
            hintText: AppLocalizations.of(context)!.vehicle_type,
            iconData: (FontAwesomeIcons.car),
            validator: () {},
            isObscure: false),
      ],
    );
  }

  Widget _buildColorCarField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(AppLocalizations.of(context)!.vehicle_color),
        const SizedBox(
          height: 4,
        ),
        CustomTextField(
            initalValue: delivery.color,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.text,
            hintText: AppLocalizations.of(context)!.vehicle_color,
            iconData: (Icons.color_lens),
            validator: () {},
            isObscure: false),
      ],
    );
  }

  Widget _buildSubmitCloseBtn(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child:  Text(AppLocalizations.of(context)!.edit),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ),
      ],
    );
  }
}
