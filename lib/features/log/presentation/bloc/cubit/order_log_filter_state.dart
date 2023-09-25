// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'order_log_filter_cubit.dart';

abstract class OrderLogFilterState extends Equatable {
  const OrderLogFilterState();

  @override
  List<Object> get props => [];
}

class OrderLogFilterInitial extends OrderLogFilterState {}

class OrderLogFilterDate extends OrderLogFilterState {

  final LogOrderType logOrderType;
  final List<LogOrder> logOrders;
  const OrderLogFilterDate({
    required this.logOrderType,
    required this.logOrders,
  });
  @override

  List<Object> get props => [logOrderType,logOrders];
}
