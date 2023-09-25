import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_order.dart';

part 'order_log_filter_state.dart';

class OrderLogFilterCubit extends Cubit<OrderLogFilterState> {
  OrderLogFilterCubit() : super(OrderLogFilterInitial());
  void getOrders(LogOrderType ordersState) {
    switch (ordersState) {
      
      case LogOrderType.fromClient:
        emit(OrderLogFilterDate(
            logOrderType: LogOrderType.fromClient,
            logOrders: logOrdersData
                .where((element) =>
                    element.logOrderType == LogOrderType.fromClient)
                .toList()));
        break;
      case LogOrderType.fromLaundry:
        emit(OrderLogFilterDate(
            logOrderType: LogOrderType.fromLaundry,
            logOrders: logOrdersData
                .where((element) =>
                    element.logOrderType == LogOrderType.fromLaundry)
                .toList()));
        break;

    }
  }
}
