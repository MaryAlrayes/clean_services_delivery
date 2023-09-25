import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/outcome.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/custom_app_bar.dart';
import '../../../../core/managers/assets_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../drawer_navigation/presentation/widgets/custom_drawer.dart';
import '../bloc/cubit/working_cubit.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotWorkingContent extends StatefulWidget {
  const NotWorkingContent({super.key});

  @override
  State<NotWorkingContent> createState() => _NotWorkingContentState();
}

class _NotWorkingContentState extends State<NotWorkingContent> {
  double _progressValue = 0;
  var _linearGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    tileMode: TileMode.mirror,
    colors: [Colors.grey, Colors.grey.shade600],
  );

  late Widget _startWorkingLabelWidget;

  late Widget _description;
  var _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _startWorkingLabelWidget = Text(
      AppLocalizations.of(context)!.click_btn_to_work,
      style: getBoldStyle(
        color: Colors.black,
        fontSize: FontSize.s24,
      ),
    );

    _description = Column(
      children: [
        Text(AppLocalizations.of(context)!.you_are_offline,
            style: getBoldStyle(
              color: ColorManager.grey,
              fontSize: FontSize.s22,
            )),
        Text(AppLocalizations.of(context)!.you_wont_recieve_new_orders,
            style: getMediumStyle(
              color: ColorManager.grey,
              fontSize: FontSize.s18,
            )),
        Text(
          AppLocalizations.of(context)!.you_can_work_on_ongoing_orders,
          style: getMediumStyle(
            color: ColorManager.grey,
            fontSize: FontSize.s18,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0).copyWith(top: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _description,
                        Hero(
                          tag: 'working_btn',
                          child: Stack(alignment: Alignment.center, children: [
                            _buildIndicator(),
                            _buildCustomBtn(),
                          ]),
                        ),
                        _startWorkingLabelWidget
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(
                    title: AppLocalizations.of(context)!.home_nav,
                  ),
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

  MaterialButton _buildCustomBtn() {
    return MaterialButton(
      onPressed: () {
        _buildHandlerBtn();
      },
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: _linearGradient,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset(
          AssetsManager.start,
          color: Colors.white,
        ),
      ),
    );
  }

  void _buildHandlerBtn() {
    setState(() {
      _startWorkingLabelWidget =
          Text(AppLocalizations.of(context)!.working_loading,
              style: getBoldStyle(
                color: ColorManager.primary,
                fontSize: FontSize.s22,
              ));

      _description = Container();

      _linearGradient = const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        tileMode: TileMode.mirror,
        colors: [
          Color.fromARGB(255, 25, 83, 189),
          Color.fromARGB(255, 57, 153, 232)
        ],
      );
    });

    _timer = Timer.periodic(
      const Duration(microseconds: 1000),
      (timer) {
        setState(() {
          _progressValue++;
          if (_progressValue == 100) {
            Future.delayed(
                const Duration(
                  milliseconds: 1000,
                ), () {
              BlocProvider.of<WorkingCubit>(context).changeWorkingState(true);
            });
          }
        });
      },
    );
  }

  SfRadialGauge _buildIndicator() {
    return SfRadialGauge(enableLoadingAnimation: true, axes: <RadialAxis>[
      RadialAxis(
          radiusFactor: 0.65,
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          axisLineStyle: AxisLineStyle(
            thickness: 0.015,
            color: const Color.fromARGB(255, 57, 153, 232).withOpacity(0.1),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: <GaugePointer>[
            RangePointer(
              value: _progressValue,
              width: 0.05,
              sizeUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.bothCurve,
              enableAnimation: true,
              animationDuration: 500,
              animationType: AnimationType.linear,
              color: const Color.fromARGB(255, 73, 126, 225),
            ),
          ])
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }
}
