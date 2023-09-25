import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/languages_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/features/localization/cubit/lacalization_cubit.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorManager.primary,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          width: double.infinity,
          height: 60,
          child: Text(
            title,
            style: getRegularStyle(
              fontSize: FontSize.s18,
              color: ColorManager.white,
            ),
          ),
        ),
        _buildNavIcon(context),
      ],
    );
  }

  Widget _buildNavIcon(BuildContext context) {
    return BlocBuilder<LacalizationCubit, LacalizationState>(
      builder: (context, state) {
        if (state.locale.countryCode == LanguagesManager.Arabic ||
            state.locale.countryCode == LanguagesManager.Urdu) {
          return Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            child: _buildDrawerIcon(
              context,
            ),
          );
        } else {
          return Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: _buildDrawerIcon(
              context,
            ),
          );
        }
      },
    );
  }

  IconButton _buildDrawerIcon(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
    );
  }
}
