import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String hintText;
  final IconData? iconData;
  final Color backgroundColor;
  final bool isObscure;
  final TextEditingController? textEditingController;
  final String? initalValue;
  final TextAlign textAlign;
  final Function validator;
  final Function? onChanged;
  const CustomTextField(
      {Key? key,
      required this.textInputAction,
      required this.textInputType,
      required this.hintText,
      this.iconData,
      this.backgroundColor = Colors.white,
      this.textEditingController,
      this.textAlign = TextAlign.start,
      this.initalValue,
      this.onChanged,
      required this.validator,
      required this.isObscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: TextFormField(
        textInputAction: textInputAction,
        keyboardType: textInputType,
        cursorColor: ColorManager.primary,
        style: const TextStyle(
          color: Colors.black,
        ),
        textAlignVertical: TextAlignVertical.center,
        textAlign: textAlign,
        controller: textEditingController,
        initialValue: initalValue,
        decoration: __buildFieldDecoration(
          hint: hintText,
          icon: iconData,
        ),
        obscureText: isObscure,
        validator: (value) {
          return validator(value);
        },
        onChanged: (value) {
          if (onChanged != null) {
            onChanged!(value);
          }
        },
      ),
    );
  }

  InputDecoration __buildFieldDecoration(
      {required String hint, IconData? icon}) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: icon != null
          ? Icon(
              icon,
            )
          : null,
    );
  }
}
