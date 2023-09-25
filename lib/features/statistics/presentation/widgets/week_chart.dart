
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/utils/extensions/weekdays_extensions.dart';
import '../../data/week_statistics.dart';
import 'stat_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class WeekChart extends StatefulWidget {
  final List<WeekStatistics> data;
  const WeekChart({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<WeekChart> createState() => _WeekChartState();
}

class _WeekChartState extends State<WeekChart> {
  int touchedIndex = -1;
  double total = 0;
  @override
  void initState() {
    super.initState();
    total = widget.data.fold(0, (sum, element) => sum + element.total);
  }

  @override
  Widget build(BuildContext context) {
    return StatCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
             AppLocalizations.of(context)!.money_recieved_this_week_chart_label,
              style: getBoldStyle(
                color: ColorManager.white,
                fontSize: FontSize.s18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: BarChart(
                  mainBarData(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 14,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? Colors.yellow : barColor,
          width: width,
          borderSide: isTouched
              ? const BorderSide(color: Colors.yellow)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: total,
            color: ColorManager.grey.withOpacity(0.4),
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        return makeGroupData(i, widget.data[i].total.toDouble(),
            isTouched: i == touchedIndex);
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.black38,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              '${widget.data[group.x].weekDays.displayText(context)}\n',
              getBoldStyle(
                color: Colors.white,
                fontSize: FontSize.s18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '${(rod.toY - 1).round()}\n${AppLocalizations.of(context)!.saudi_currency_abb}',
                  style: getMediumStyle(
                    color: Colors.white,
                    fontSize: FontSize.s14,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: _getTitlesData(),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }

  FlTitlesData _getTitlesData() {
    return FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: getTitles,
          reservedSize: 38,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.yellow,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(
        widget.data[value.toInt()].weekDays.displayAbbreviation(context),
        style: style,
      ),
    );
  }
}
