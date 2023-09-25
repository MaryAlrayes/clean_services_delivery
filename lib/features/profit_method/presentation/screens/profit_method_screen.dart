import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/features/drawer_navigation/presentation/widgets/custom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ProfitMethodScreen extends StatelessWidget {
  const ProfitMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.profit_cal_method),));
  }
}
