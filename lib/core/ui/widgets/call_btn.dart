// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CallBtn extends StatelessWidget {
  final String phone;
  const CallBtn({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 30,
      child: ElevatedButton(
        onPressed: () async {
          final url = 'tel:$phone';
          if (await canLaunchUrlString(url)) {
            await launchUrlString(url);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(
            0,
          ),
        ),
        child: Text(AppLocalizations.of(context)!.call),
      ),
    );
  }
}
