// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';

class NameSection extends StatelessWidget {
  final String name;
  const NameSection({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person,
          color: ColorManager.secondary,
        ),
        const SizedBox(width: 16,),
        Flexible(
          child: Text(
            name,
            style: getRegularStyle(
              color: Colors.black,
              fontSize: FontSize.s16,
            ),
          ),
        )
      ],
    );
  }
}
