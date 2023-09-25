// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/call_btn.dart';

class PhoneNumber extends StatelessWidget {
  final String phone;
  const PhoneNumber({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(
                Icons.phone,
                color: ColorManager.secondary,
              ),
              const SizedBox(width: 16,),
              Flexible(
                child: Text(
                  phone,
                  style: getRegularStyle(
                    color: Colors.black,
                    fontSize: FontSize.s16,
                  ),
                ),
              ),
            ],
          ),
        ),
        CallBtn(phone: phone,)
      ],
    );
  }
}
