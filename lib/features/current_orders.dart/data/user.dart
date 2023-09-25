// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserLocation {
  final String cityName;
  final int buildingNumber;
  final int floorNumber;
  UserLocation({
    required this.cityName,
    required this.buildingNumber,
    required this.floorNumber,
  });
}
class User {
  final String id;
  final String name;
  final String phone;
  final double lat;
  final double lng;
  final UserLocation userLocation;
  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.lat,
    required this.lng,
    required this.userLocation,
  });
}

final user = User(id: '1', name: 'اسم العميل', phone: '0524264846', lat: 34.728927,lng: 36.720847, userLocation: UserLocation(cityName: 'الرياض', buildingNumber: 2, floorNumber: 4));
