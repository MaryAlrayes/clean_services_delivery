// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';

class LabelCard extends StatelessWidget {
  final String label;
  const LabelCard({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
       label,
        style: getBoldStyle(
          color: ColorManager.primary,
          fontSize: FontSize.s18,
        ),
      ),
    );
  }
}
