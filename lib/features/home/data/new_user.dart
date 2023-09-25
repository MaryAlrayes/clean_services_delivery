import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/user.dart';

class NewUser {
  final String id;
  final String name;
  final String phone;
  final double lat;
  final double lng;
  final UserLocation userLocation;
  NewUser({
    required this.id,
    required this.name,
    required this.phone,
    required this.lat,
    required this.lng,
    required this.userLocation,
  });
}

final newUser = NewUser(id: '1', name: 'اسم العميل', phone: '0524264846', lat: 34.728927,lng: 36.720847, userLocation: UserLocation(cityName: 'الرياض', buildingNumber: 2, floorNumber: 4));
