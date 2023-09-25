import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/enums/enums.dart';
import '../../../current_orders.dart/presentation/screens/current_orders_screen.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../log/presentation/screens/log_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../../../profit_method/presentation/screens/profit_method_screen.dart';
import '../../../settings/presentation/screens/settings_screen.dart';
import '../../../statistics/presentation/screens/statistics_screen.dart';
import '../../../system_method/presentation/screens/system_method_screen.dart';
import '../bloc/cubit/drawer_navigation_cubit.dart';
import '../widgets/custom_drawer.dart';

class HomepagScreen extends StatelessWidget {
  static const routeName = 'homepage_screen';
  const HomepagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(),
      drawer: const CustomDrawer(),
      body: BlocBuilder<DrawerNavigationCubit, DrawerNavigationState>(
        builder: (context, state) {
          // return Container();
          switch (state.navigationDrawer) {
            case NavigationLabelsDrawer.home:
              return const HomeScreen();
            case NavigationLabelsDrawer.currentOrders:
              return const CurrentOrdersScreen();
            case NavigationLabelsDrawer.log:
              return  LogScreen();
            case NavigationLabelsDrawer.statistics:
              return const StatisticsScreen();
            case NavigationLabelsDrawer.profile:
              return const ProfileScreen();
            case NavigationLabelsDrawer.settings:
              return const SettingsScreen();
            case NavigationLabelsDrawer.systemMethod:
              return const SystemMethodScreen();
            case NavigationLabelsDrawer.profitCalcMethod:
              return const ProfitMethodScreen();
          }
        },
      ),
    );
  }
}
