// ignore_for_file: public_member_api_docs, sort_constructors_first

class LogLaundry {
  final String id;
  final String name;

   final String cityName;
  final String phone;

  LogLaundry({
    required this.id,
    required this.name,
    required this.cityName,
    required this.phone,
  });
}

final laundryLog = LogLaundry(id: '1', name: 'مغسلة 1', cityName: 'الرياض', phone: '23456746');
