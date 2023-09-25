import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/presentation/screens/current_orders_details_screen.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/presentation/screens/current_orders_from_laundry_screen.dart';

import '../../../drawer_navigation/presentation/widgets/custom_drawer.dart';
import 'current_orders_from_client_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CurrentOrdersScreen extends StatelessWidget {
  const CurrentOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.ongoing_orders_nav),
          bottom:  TabBar(tabs: [
            Tab(
              text:AppLocalizations.of(context)!.bring_from_client,
            ),
            Tab(
              text: AppLocalizations.of(context)!.bring_from_laundry,
            ),
          ]),
        ),
        body: const TabBarView(
          children: [CurrentOrdersFromClientScreen(), CurrentOrdersFromLaundryScreen()],
        ),
      ),
    );
  }
}
