// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:saudi_clean_services_delivery/core/utils/enums/order_status_enum.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/laundry.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/order_services.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/user.dart';
import 'package:saudi_clean_services_delivery/features/home/data/new_order.dart';

class Order  {
  final String id;
  final Laundry laundry;
  final User user;
  final DateTime dateTime;
  final OrderStatus orderStatus;
  final List<OrderService> services;
  final num price;
  num distance = 2.0;
  num commission = 5.0;

  Order({
    required this.id,
    required this.laundry,
    required this.user,
    required this.dateTime,
    required this.orderStatus,
    required this.services,
    required this.price,
  });
}

List<Order> myOrdersFromClient = [
  Order(
    id: '123',
    orderStatus: OrderStatus.onWay_to_recieve_from_client,
    dateTime: DateTime.now(),
    laundry: laundryServices[0],
    user: user,
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
  ),
  Order(
    id: '344',
    orderStatus: OrderStatus.onWay_to_deliver_to_laundry,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '456',
    orderStatus: OrderStatus.onWay_to_deliver_to_laundry,
    dateTime: DateTime.now(),
    laundry: laundryServices[0],
    user: user,
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
  ),
  Order(
    id: '455',
    orderStatus: OrderStatus.onWay_to_recieve_from_client,
    dateTime: DateTime.now(),
    user: user,
    price: 135,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '875',
    orderStatus: OrderStatus.onWay_to_recieve_from_client,
    dateTime: DateTime.now(),
    user: user,
    price: 135,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '344',
    orderStatus: OrderStatus.onWay_to_deliver_to_laundry,
    dateTime: DateTime.now(),
    user: user,
    price: 135,
    laundry: laundryServices[0],
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
  ),
];
List<Order> myOrdersFromLaundry = [
  Order(
    id: '321',
    orderStatus: OrderStatus.onWay_to_recieve_from_laundry,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '111',
    orderStatus: OrderStatus.onWay_to_deliver_to_client,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '111',
    orderStatus: OrderStatus.onWay_to_recieve_from_laundry,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '124',
    orderStatus: OrderStatus.onWay_to_deliver_to_client,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '324',
    orderStatus: OrderStatus.onWay_to_deliver_to_client,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '84',
    orderStatus: OrderStatus.onWay_to_recieve_from_laundry,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
  Order(
    id: '90',
    orderStatus: OrderStatus.onWay_to_recieve_from_laundry,
    dateTime: DateTime.now(),
    user: user,
    laundry: laundryServices[0],
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
  ),
];
