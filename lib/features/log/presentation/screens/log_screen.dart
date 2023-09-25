import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_manager.dart';
import '../../../../core/managers/styles_manager.dart';
import '../../../../core/ui/widgets/background.dart';
import '../../../../core/ui/widgets/custom_app_bar.dart';
import '../../../../core/ui/widgets/outcome.dart';
import '../../../../core/utils/Constants/tweens.dart';
import '../../../drawer_navigation/presentation/widgets/custom_drawer.dart';
import '../../data/log_order.dart';
import '../bloc/bloc/outcome_bloc.dart';
import '../dialogs/outcome_result.dart';
import '../widgets/order_log_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogScreen extends StatelessWidget {
  LogScreen({super.key});
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  final length = logOrdersData.length;
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OutcomeBloc(),
      child: Builder(builder: (context) {
        return BlocListener<OutcomeBloc, OutcomeState>(
          listener: (context, state) {
            if (state is OutcomeResultState) {
              _removeAnimatedItems(context, state.outcome);
            }
          },
          child: Scaffold(
            drawer: const CustomDrawer(),
            body: Container(
              color: ColorManager.primary,
              child: SafeArea(
                child: Container(
                  color: Colors.white,
                  child: Stack(alignment: Alignment.center, children: [
                    Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Background(),
                        ),
                        BlocBuilder<OutcomeBloc, OutcomeState>(
                          builder: (context, state) {
                            if (state is EmptyLogState ||
                                logOrdersData.isEmpty) {
                              return _buildEmptyLog(context);
                            }
                            return _buildLog(context);
                          },
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: CustomAppBar(
                          title: AppLocalizations.of(context)!
                              .last_week_orders_record),
                    ),
                    const Positioned(
                      top: 50,
                      child: Outcome(),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildLog(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0).copyWith(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // const OrderLogFilter(),
          _buildCollectBtn(context),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: _buildList(),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyLog(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0).copyWith(top: 100),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.record_empty,
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ),
        ),
      ),
    );
  }

  Widget _buildList() {
    return AnimatedList(
      key: _listKey,
      controller: _controller,
      initialItemCount: logOrdersData.length,
      itemBuilder: (context, index, animation) {
        return _buildItem(
          index,
          logOrdersData[index],
          animation,
        );
      },
    );
  }

  void _removeAnimatedItems(BuildContext context, double outcome) {
    Future ft = Future((() {}));
    for (int i = 0; i < logOrdersData.length; i++) {
      ft = ft.then((_) {
        return Future.delayed(
          const Duration(milliseconds: 300),
          () {
            LogOrder logOrder = logOrdersData.removeAt(0);
            _listKey.currentState!.removeItem(
              0,
              (context, animation) => _buildItem(
                i,
                logOrder,
                animation,
              ),
            );
            if (logOrdersData.isEmpty) {
              showTotalDialog(
                  context, outcome, BlocProvider.of<OutcomeBloc>(context));
            }
          },
        );
      });
    }
  }

  Widget _buildCollectBtn(BuildContext context) {
    return BlocBuilder<OutcomeBloc, OutcomeState>(
      builder: (context, state) {
        if (state is OutcomeInitial) {
          return ElevatedButton(
            onPressed: () {
              BlocProvider.of<OutcomeBloc>(context)
                  .add(CalculateOutcomeEvent());
            },
            child: const Text(
              'تحصيل',
            ),
          );
        } else if (state is OutcomeLoading) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: ColorManager.primary),
            child: Text(
              'جاري حساب المحصلة ...',
              style: getRegularStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildItem(
    int index,
    LogOrder logOrdersData,
    Animation<double> animation,
  ) {
    return SlideTransition(
      position: animation.drive(TweenConstants.horizontalTween),
      child: OrderLogItem(
        logOrder: logOrdersData,
      ),
    );
  }
}
