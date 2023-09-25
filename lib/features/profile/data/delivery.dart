// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';

class Delivery {
  final String name;
  final String phone;
  final String city;
  final String phoneRelative;
  final Relative relative;
  final String carType;
  final String color;
  final String carNumber;
  Delivery({
    required this.name,
    required this.phone,
    required this.city,
    required this.phoneRelative,
    required this.relative,
    required this.carType,
    required this.color,
    required this.carNumber,
  });
}

final delivery = Delivery(
    name: 'اسم المندوب',
    phone: '0535830502',
    city: 'مدينة 1',
    phoneRelative: '0538248402',
    relative: Relative.relative,
    carType: 'Kia',
    color: 'أسود',
    carNumber: '123456');
