import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/managers/assets_manager.dart';
import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/ui/dialogs/logout_dialog.dart';
import '../../../../core/utils/enums/enums.dart';
import '../bloc/cubit/drawer_navigation_cubit.dart';
import 'drawer_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorManager.primary,
    ),
  );
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeaderDrawer(),
          _getHomeItem(context),
          _getCurrentOrders(context),
          _getLogItem(context),
          _getStatisticsItem(context),
          _getProfileItem(context),
          const Divider(
            height: 2,
          ),
          _getSettingsItem(context),
          _getSystemMethodItem(context),
          _getProfitCalcItem(context),
          const Divider(
            height: 2,
          ),
          _getLogOutItem(context)
        ],
      ),
    );
  }

  UserAccountsDrawerHeader _buildHeaderDrawer() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: const AssetImage(
              AssetsManager.background,
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            fit: BoxFit.cover),
      ),
      accountName: Text(
        '',
        style: getRegularStyle(color: Colors.black, fontSize: FontSize.s16),
      ),
      accountEmail: Text('اسم المندوب',
          style: getRegularStyle(color: Colors.black, fontSize: FontSize.s16)),
    );
  }

  Widget _getLogOutItem(BuildContext context) {
    return DrawerItem(
      handler: () {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return showLogOutDialog(context);
          },
        );
      },
      iconData: Icons.logout,
      title: AppLocalizations.of(context)!.logout_nav,
    );
  }

  Widget _getSystemMethodItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.work_history,
      title: AppLocalizations.of(context)!.how_system_works,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.systemMethod);
      },
    );
  }

  Widget _getProfitCalcItem(BuildContext context) {
    return DrawerItem(
      iconData: FontAwesomeIcons.coins,
      title:AppLocalizations.of(context)!.profit_cal_method,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.profitCalcMethod);
      },
    );
  }

  Widget _getSettingsItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.settings,
      title: AppLocalizations.of(context)!.settings_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.settings);
      },
    );
  }

  Widget _getLogItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.history,
      title: AppLocalizations.of(context)!.log_orders_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.log);
      },
    );
  }

  Widget _getStatisticsItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.bar_chart,
      title: AppLocalizations.of(context)!.statistics_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.statistics);
      },
    );
  }

  Widget _getProfileItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.person,
      title: AppLocalizations.of(context)!.profile_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.profile);
      },
    );
  }

  Widget _getHomeItem(BuildContext context) {
    return DrawerItem(
      iconData: Icons.home,
      title: AppLocalizations.of(context)!.home_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.home);
      },
    );
  }

  Widget _getCurrentOrders(BuildContext context) {
    return DrawerItem(
      iconData: Icons.document_scanner,
      title: AppLocalizations.of(context)!.ongoing_orders_nav,
      handler: () {
        Navigator.pop(context);
        BlocProvider.of<DrawerNavigationCubit>(context)
            .getDrawerItem(NavigationLabelsDrawer.currentOrders);
      },
    );
  }
}
