
import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/values_manager.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/core/utils/helpers/format_number.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_order.dart';
import 'package:saudi_clean_services_delivery/features/log/presentation/screens/log_order_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class OrderLogItem extends StatelessWidget {
  final LogOrder logOrder;
  const OrderLogItem({
    Key? key,
    required this.logOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            LogOrderDetailsScreen.routeName,
            arguments: {'log_order': logOrder},
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(context),
                    _buildFromTo(logOrder.logOrderType,context)
                  ],
                ),
              ),
              const SizedBox(width: 4),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCommssionBtn(context, logOrder.commission),
                          const SizedBox(height:8),
                  _buildTaxBtn(
                    context,
                    logOrder.tax,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCommssionBtn(BuildContext context, num commisson) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        '${AppLocalizations.of(context)!.commission}: ${formatNumber(commisson)} ${AppLocalizations.of(context)!.saudi_currency_abb}',
        style: getRegularStyle(color: ColorManager.white),
      ),
    );
  }

  Widget _buildTaxBtn(BuildContext context, num tax) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        '${AppLocalizations.of(context)!.receivable}:  ${formatNumber(tax)} ${AppLocalizations.of(context)!.saudi_currency_abb}',
        style: getRegularStyle(color: ColorManager.white),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.order} #${logOrder.id}',
          style: getBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s17,
          ),
        ),
      ],
    );
  }

  Widget _buildFromTo(LogOrderType type,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type == LogOrderType.fromClient
              ? '${AppLocalizations.of(context)!.from} : ${logOrder.user.name}'
              : '${AppLocalizations.of(context)!.from}: ${logOrder.laundry.name}',
          maxLines: 1,
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ).copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          type == LogOrderType.fromClient
              ? '${AppLocalizations.of(context)!.to}: ${logOrder.laundry.name}'
              : '${AppLocalizations.of(context)!.order}: ${logOrder.user.name}',
          maxLines: 1,
          style: getMediumStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ).copyWith(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
