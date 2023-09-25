// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:saudi_clean_services_delivery/core/utils/enums/order_status_enum.dart';

class OrderService {
  final String serviceId;
  final String item;
  ServiceType serviceType = ServiceType.light;
  final List<String> services;
  final int count;
  final double price;
  OrderService({
    required this.serviceId,
    required this.item,
    required this.services,
    required this.count,
    required this.price,
  });
}
