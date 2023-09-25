class NewLaundry {
  final String id;
  final String name;
  final String phone;
  final String cityName;
  final double lat=34.739803;
  final double lng= 36.703328;

  NewLaundry({
    required this.id,
    required this.name,
    required this.cityName,
    required this.phone,

  });
}
final newlaundry = NewLaundry(id: '1', name: 'مغسلة 1', cityName: 'الرياض', phone: '23456746');
