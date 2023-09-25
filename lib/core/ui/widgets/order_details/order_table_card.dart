// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:saudi_clean_services_delivery/core/managers/color_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/font_manager.dart';
import 'package:saudi_clean_services_delivery/core/managers/styles_manager.dart';
import 'package:saudi_clean_services_delivery/core/ui/widgets/custom_data_table.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/order_services.dart';
import 'package:saudi_clean_services_delivery/core/utils/extensions/extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class OrderTableCard extends StatelessWidget {
  final List<OrderService> data;
  final num price;
  final num commission;
  const OrderTableCard({
    Key? key,
    required this.data,
    required this.price,
    required this.commission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.order_details,
          style: getBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomDataTable(
          columns: getColums(context),
          rows: getRows(context,data),
        ),
        const SizedBox(
          height: 8,
        ),
        _buildPrice(context),
        const SizedBox(
          height: 8,
        ),
        _buildCommssions(context),
        const SizedBox(
          height: 4,
        ),
        const Divider(
          height: 8,
          thickness: 1,
        ),
        const SizedBox(
          height: 4,
        ),
        _buildTotal(context)
      ],
    );
  }

  List<String> getColums(BuildContext context) {
    List<String> columns = [
      '#',
      AppLocalizations.of(context)!.item_type,
      AppLocalizations.of(context)!.service_type,
      AppLocalizations.of(context)!.item_weight,
      AppLocalizations.of(context)!.counts,
      AppLocalizations.of(context)!.price,

    ];
    return columns;
  }

  List<DataRow> getRows(BuildContext context, List<OrderService> data) {
    return data.map((e) {
      final cells = [e.serviceId, e.item,e.services,e.serviceType.displayText(context),  e.count, e.price];
      return DataRow(
        cells: getCells(
          cells,
        ),
      );
    }).toList();
  }

  List<DataCell> getCells(List<dynamic> cells) {
    return cells.map((cell) {
      if (cell is List<String>) {
        return _buildServiceCell(cell);
      } else {
        return _buildBasicCell(cell);
      }
    }).toList();
  }

  DataCell _buildBasicCell(cell) {
    return DataCell(
      Container(
        alignment: Alignment.center,
        child: Text(
          '$cell',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  DataCell _buildServiceCell(List<String> cell) {
    List<String> newCells = [];
    for (var element in cell) {
      newCells.add(element);
      newCells.add(' - ');
    }
    newCells.removeAt(newCells.length - 1);
    return DataCell(
      Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: newCells
              .map(
                (e) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    e,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildPrice(BuildContext context) {
    return Row(
      children: [
        Text(
          '${AppLocalizations.of(context)!.cost}: ',
          style: getSemiBoldStyle(
            color: ColorManager.secondary,
            fontSize: FontSize.s16,
          ),
        ),
        Text(
          '$price ${AppLocalizations.of(context)!.saudi_currency}',
          style: getRegularStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ),
        ),
      ],
    );
  }

  Widget _buildCommssions(BuildContext context) {
    return Row(
      children: [
        Text(
          '${AppLocalizations.of(context)!.commission}: ',
          style: getSemiBoldStyle(
            color: ColorManager.secondary,
            fontSize: FontSize.s16,
          ),
        ),
        Text(
          '$commission ${AppLocalizations.of(context)!.saudi_currency}',
          style: getRegularStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ),
        ),
      ],
    );
  }

  Widget _buildTotal(BuildContext context) {
    return Row(
      children: [
        Text(
          '${AppLocalizations.of(context)!.total}: ',
          style: getSemiBoldStyle(
            color: ColorManager.secondary,
            fontSize: FontSize.s16,
          ),
        ),
        Text(
          '${price + commission} ${AppLocalizations.of(context)!.saudi_currency}',
          style: getRegularStyle(
            color: Colors.black,
            fontSize: FontSize.s16,
          ),
        ),
      ],
    );
  }
}
