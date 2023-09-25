import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/features/log/presentation/bloc/cubit/order_log_filter_cubit.dart';
import 'package:saudi_clean_services_delivery/core/utils/extensions/extensions.dart';

class OrderLogFilter extends StatelessWidget {
  const OrderLogFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorManager.primary),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      child: BlocBuilder<OrderLogFilterCubit, OrderLogFilterState>(
          builder: (context, state) {
        if (state is OrderLogFilterDate) {
          return DropdownButtonHideUnderline(
            child: ButtonTheme(
              child: DropdownButton<LogOrderType>(
                value: state.logOrderType,
                items: LogOrderType.values
                    .map(
                      (e) => _buildDropMenuItem(
                        context,
                        e,
                      ),
                    )
                    .toList(),
                onChanged: ((value) {
                  BlocProvider.of<OrderLogFilterCubit>(context)
                      .getOrders(value!);
                }),
              ),
            ),
          );
        } else {
          return Container();
        }
      }),
    );
  }

  DropdownMenuItem<LogOrderType> _buildDropMenuItem(
      BuildContext context, LogOrderType e) {
    return DropdownMenuItem(
      value: e,
      child: Text(
        e.displayText(context),
        style: getRegularStyle(
          color: Colors.black,
          fontSize: FontSize.s16,
        ),
      ),
    );
  }
}
