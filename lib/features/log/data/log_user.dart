// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/user.dart';

class LogUser {
  final String id;
  final String name;
  final UserLocation logUserLocation;
  final String phone;

  LogUser({
    required this.id,
    required this.name,
    required this.logUserLocation,
    required this.phone,
  });

}

final logUser = LogUser(id: '1', name: 'اسم العميل', logUserLocation: UserLocation(cityName: 'الرياض', buildingNumber: 2, floorNumber: 4), phone: '0534235524');
