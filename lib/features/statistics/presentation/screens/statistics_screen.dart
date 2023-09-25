import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';

import '../../../../core/ui/widgets/custom_app_bar.dart';
import '../../../../core/ui/widgets/custom_list.dart';
import '../../../../core/ui/widgets/outcome.dart';
import '../../../../core/utils/Constants/tweens.dart';
import '../../../drawer_navigation/presentation/widgets/custom_drawer.dart';
import '../../data/week_statistics.dart';
import '../widgets/orders_number_this_week.dart';
import '../widgets/week_chart.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        132;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Container(
        color: ColorManager.primary,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0).copyWith(top: 100),
                    child: CustomList(
                      keyList: GlobalKey<AnimatedListState>(),
                      items: _addItems(height),
                      tween: TweenConstants.verticalTween,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(
                      title: AppLocalizations.of(context)!.statistics_nav),
                ),
                const Positioned(
                  top: 50,
                  child: Outcome(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _addItems(double height) {
    List<Widget> items = [];
    items.add(SizedBox(
      height: height * 0.75,
      child: WeekChart(
        data: statData,
      ),
    ));

    items.add(SizedBox(
      width: double.infinity,
      height: height * 0.25,
      child: _buildTotal(),
    ));
    return items;
  }

  // Expanded _buildCommissionsCard() {
  //   return const Expanded(
  //     child: IncomeStat(
  //       title: 'العمولة المستحقة',
  //       subtitle: 'دفع الكتروني',
  //       icon: FontAwesomeIcons.creditCard,
  //       amount: 125,
  //       currency: 'ريال سعودي',
  //     ),
  //   );
  // }

  // Expanded _buildCachCard() {
  //   return const Expanded(
  //     child: IncomeStat(
  //       title: 'المبلغ المستلم',
  //       subtitle: 'كاش',
  //       icon: FontAwesomeIcons.coins,
  //       amount: 150,
  //       currency: 'ريال سعودي',
  //     ),
  //   );
  // }

  // Expanded _buildTaxCard() {
  //   return const Expanded(
  //     child: IncomeStat(
  //       title: 'الذمم المستحقة',
  //       subtitle: 'كاش',
  //       icon: FontAwesomeIcons.coins,
  //       amount: 150,
  //       currency: 'ريال سعودي',
  //     ),
  //   );
  // }

  Widget _buildTotal() {
    return const OrdersNumberThisWeek();
  }
}
