import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/features/drawer_navigation/presentation/widgets/custom_drawer.dart';
import 'package:saudi_clean_services_delivery/features/home/presentation/bloc/cubit/working_cubit.dart';
import 'package:saudi_clean_services_delivery/features/home/presentation/screens/new_order_from_laundry_screen.dart';
import 'package:saudi_clean_services_delivery/features/home/presentation/screens/new_orders_from_client_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class WorkingContent extends StatelessWidget {
  const WorkingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title:  Text(
           AppLocalizations.of(context)!.pending_orders,
          ),
          actions: [
            _buildStopBtn(context),
          ],
          bottom:  TabBar(tabs: [
            Tab(
              text: AppLocalizations.of(context)!.bring_from_client ,
            ),
            Tab(
              text:AppLocalizations.of(context)!.bring_from_laundry ,
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            NewOrdersFromClientList(),
            NewOrdersFromLaundryList(),
          ],
        ),
      ),
    );
  }

  Hero _buildStopBtn(BuildContext context) {
    return Hero(
      tag: 'working_btn',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: () {
            BlocProvider.of<WorkingCubit>(context).changeWorkingState(false);
          },
          icon: const Icon(Icons.stop),
          label:  FittedBox(
            child: Text(
              AppLocalizations.of(context)!.stop_working,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
        ),
      ),
    );
  }
}
