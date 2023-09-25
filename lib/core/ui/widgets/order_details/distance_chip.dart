// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/helpers/format_number.dart';

class DistanceChip extends StatelessWidget {
  final num distance;
  const DistanceChip({
    Key? key,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: const Color(0xffF4F4F4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          4,
        ),
      ),
      label: Text(
        'km ${distance.toStringAsFixed(2)}',
        textAlign: TextAlign.center,
        style: getRegularStyle(color: Colors.black87),
      ),
      avatar: const Icon(
        FontAwesomeIcons.locationArrow,
        size: 16,
        color: Colors.green,
      ),
    );

  }
}
