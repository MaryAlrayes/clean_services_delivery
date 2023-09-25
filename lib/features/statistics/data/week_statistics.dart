import '../../../core/utils/enums/weekdays.dart';

class WeekStatistics {
  final WeekDays weekDays;
  final int total;
  WeekStatistics({
    required this.weekDays,
    required this.total,
  });
}

final statData = [
  WeekStatistics(weekDays: WeekDays.Monday, total: 12),
  WeekStatistics(weekDays: WeekDays.Tuesday, total: 15),
  WeekStatistics(weekDays: WeekDays.Wednesday, total: 30),
  WeekStatistics(weekDays: WeekDays.Thuresday, total: 74),
  WeekStatistics(weekDays: WeekDays.Friday, total: 10),
  WeekStatistics(weekDays: WeekDays.Saturday, total: 25),
  WeekStatistics(weekDays: WeekDays.Sunday, total: 75)
];
