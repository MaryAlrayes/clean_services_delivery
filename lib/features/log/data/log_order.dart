// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/order_services.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_laundry.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_user.dart';

class LogOrder {
  final String id;
  final DateTime dateTime;
  final LogLaundry laundry;
  final LogUser user;
  final List<OrderService> services;
  final LogOrderType logOrderType;
final num price;
  final num distance;
  final num commission;
  final num tax=1.5;
  LogOrder({
    required this.id,
    required this.dateTime,
    required this.laundry,
    required this.user,
    required this.services,
    required this.logOrderType,
    required this.distance,
    required this.commission,
    required this.price
  });


}
final logOrdersData =[
      LogOrder(id: '1', dateTime: DateTime.now(), laundry: laundryLog, user:logUser,      price: 135,
   services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromClient,
    distance: 2,
    commission: 5),
      LogOrder(id: '2', dateTime: DateTime.now(), laundry: laundryLog, user:logUser,
      price: 135,
    services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromClient,
    distance: 2,
    commission: 5),
      LogOrder(id: '3', dateTime: DateTime.now(), laundry:laundryLog , user:logUser,price: 135,
     services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromLaundry,
    distance: 2,
    commission: 5),
      LogOrder(id: '4', dateTime: DateTime.now(), laundry:laundryLog , user:logUser,price: 135,
     services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromClient,
    distance: 2,
    commission: 5),
      LogOrder(id: '5', dateTime: DateTime.now(), laundry:laundryLog , user:logUser,price: 135,
     services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromLaundry,
    distance: 2,
    commission: 5),
      LogOrder(id: '6', dateTime: DateTime.now(), laundry:laundryLog , user:logUser,price: 135,
      services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromClient,
    distance: 2,
    commission: 5),
      LogOrder(id: '7', dateTime: DateTime.now(), laundry:laundryLog , user:logUser,price: 135,
     services: [
      OrderService(
          serviceId: '1',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '2',
          services: [
            'غسيل',
            'كوي',
          ],
          item: 'بنطلون',
          price: 45,
          count: 3),
      OrderService(
          serviceId: '3',
          services: [
            'كوي',
          ],
          item: 'كنزة',
          price: 20,
          count: 3),
      OrderService(
          serviceId: '4',
          services: [
            'غسيل',
          ],
          item: 'جاكيت',
          price: 20,
          count: 3),
      OrderService(
        serviceId: '5',
        services: [
          'غسيل',
          'كوي',
        ],
        item: 'طقم',
        price: 30,
        count: 3,
      )
    ],
    logOrderType: LogOrderType.fromLaundry,
    distance: 2,
    commission: 5),
];
