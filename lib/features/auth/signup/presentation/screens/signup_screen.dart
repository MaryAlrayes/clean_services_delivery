import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/managers/assets_manager.dart';
import '../../../../../core/managers/color_manager.dart';
import '../../../../../core/managers/font_manager.dart';
import '../../../../../core/managers/styles_manager.dart';
import '../../../../../core/managers/values_manager.dart';
import '../../../../../core/ui/widgets/custom_label.dart';
import '../../../../../core/ui/widgets/custom_text_field.dart';
import '../../../../drawer_navigation/presentation/screens/homepage_screen.dart';
import '../../../common%20presentation/language_drop_down.dart';
import '../widgets/confirm_terms.dart';
import '../widgets/location_drop_down.dart';
import '../widgets/nationality_drop_down.dart';
import '../widgets/pick_file.dart';
import '../widgets/relative_drop_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = 'signup_screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: ColorManager.primary,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBackground(context),
                _buildCard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p18),
      decoration: _getContainerDecoration(),
      child: _buildSignupCard(
        context,
      ),
    );
  }

  Container _buildBackground(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: _buildTitleIntro(context),
          ),
          const Positioned(
            right: 4,
            top: 4,
            child: LanguageDropDown(),
          ),
        ],
      ),
    );
  }

  FittedBox _buildTitleIntro(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AssetsManager.app_logo,
                width: 90,
                height: 90,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          FittedBox(
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.app_name,
                  style: getBoldStyle(
                    color: Colors.black,
                    fontSize: FontSize.s24,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  AppLocalizations.of(context)!.saudi,
                  style: getBoldStyle(
                    color: Colors.white,
                    fontSize: FontSize.s24,
                  ),
                ),
              ],
            ),
          ),
          Text(
            AppLocalizations.of(context)!.sign_up_welcome,
            style: getRegularStyle(color: Colors.white, fontSize: FontSize.s16),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }

  BoxDecoration _getContainerDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 0),
          blurRadius: 0.5,
          spreadRadius: 1,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _buildSignupCard(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildNameField(context),
          const SizedBox(
            height: 12,
          ),
          _buildPhoneField(context),
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
          _buildNationalityDropDown(context),
          const SizedBox(
            height: 12,
          ),
          _buildIdFilePicker(context),
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
          _buildCarLicensePicker(context),
          const SizedBox(
            height: 12,
          ),
          _buildPasswordField(context),
          const SizedBox(
            height: 12,
          ),
          _buildConfirmPasswordField(context),
          const SizedBox(
            height: 12,
          ),
          _buildConfirmTerms(),
          _buildSubmitBtn(context),
        ],
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
        _buildLabel( AppLocalizations.of(context)!.name),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
              hintText:  AppLocalizations.of(context)!.name,
              iconData: (Icons.person),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.phone_number),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.phone,
              hintText:  AppLocalizations.of(context)!.phone_number,
              iconData: (Icons.phone),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildPhoneRelativeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.relative_phone_number),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.phone,
              hintText:  AppLocalizations.of(context)!.relative_phone_number,
              iconData: (Icons.phone),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildRelativeDopDown(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel( AppLocalizations.of(context)!.relative_relation),
        const SizedBox(
          height: 4,
        ),
        const RelativeDropDown(),
      ],
    );
  }

  Widget _buildNationalityDropDown(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel( AppLocalizations.of(context)!.nationality),
        const SizedBox(
          height: 4,
        ),
        const NationalityDropDown(),
      ],
    );
  }

  Widget _buildLocationField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabel( AppLocalizations.of(context)!.location),
        const SizedBox(
          height: 4,
        ),
      const LocationDropDown(),

      ],
    );
  }

  Widget _buildCarNumberField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.vehicle_id),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.number,
              hintText: AppLocalizations.of(context)!.vehicle_id,
              iconData: (Icons.numbers),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildCarTypeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.vehicle_type),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
              hintText:  AppLocalizations.of(context)!.vehicle_type,
              iconData: (FontAwesomeIcons.car),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildColorCarField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.vehicle_color),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
              hintText:  AppLocalizations.of(context)!.vehicle_color,
              iconData: (Icons.color_lens),
              validator: () {},
              isObscure: false),
        ),
      ],
    );
  }

  Widget _buildIdFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.id_or_passport_for_non_Saudis),
        const SizedBox(
          height: 4,
        ),
        PickFile(),
      ],
    );
  }

  Widget _buildCarLicensePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.vehicle_licenses),
        const SizedBox(
          height: 4,
        ),
        PickFile(),
      ],
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.password),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              hintText:  AppLocalizations.of(context)!.password,
              iconData: (Icons.lock),
              validator: () {},
              isObscure: true),
        ),
      ],
    );
  }

  Widget _buildConfirmPasswordField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel( AppLocalizations.of(context)!.confirm_password),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          child: CustomTextField(
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              hintText:  AppLocalizations.of(context)!.confirm_password,
              iconData: (Icons.lock),
              validator: () {},
              isObscure: true),
        ),
      ],
    );
  }

  Widget _buildSubmitBtn(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
           Navigator.pushNamedAndRemoveUntil(
                context,
                HomepagScreen.routeName,
                (route) => false,
              );
      },
      child:  Text( AppLocalizations.of(context)!.create_account),
    );
  }

  Widget _buildConfirmTerms() {
    return const ConfirmTerms();
  }
}
