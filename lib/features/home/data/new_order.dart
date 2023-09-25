import 'package:saudi_clean_services_delivery/core/utils/enums/order_status_enum.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/order_services.dart';
import 'package:saudi_clean_services_delivery/features/home/data/new_laundry.dart';
import 'package:saudi_clean_services_delivery/features/home/data/new_user.dart';


class NewOrder {
  final String id;
  final NewLaundry laundry;
  final NewUser user;
  final DateTime dateTime;
  final OrderStatus orderStatus;
  final List<OrderService> services;
  final num price;
  num distance = 2.0;
  num commission = 5.0;

  NewOrder({
    required this.id,
    required this.laundry,
    required this.user,
    required this.dateTime,
    required this.orderStatus,
    required this.services,
    required this.price,
  });
}


List<NewOrder> newOrdersFromClient = [
  NewOrder(
    id: '123',
    orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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
  NewOrder(
    id: '344',
   orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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
  NewOrder(
    id: '456',
   orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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
  NewOrder(
    id: '455',
   orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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
  NewOrder(
    id: '875',
   orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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
  NewOrder(
    id: '344',
  orderStatus: OrderStatus.pending_acceptance_delivery,
    dateTime: DateTime.now(),
    laundry: newlaundry,
    user: newUser,
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

List<NewOrder> newOrdersFromLaundry = [
  NewOrder(
    id: '321',
    orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '111',
 orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '111',
 orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '124',
 orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '324',
 orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '84',
 orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
  NewOrder(
    id: '90',
    orderStatus: OrderStatus.ready_to_deliver,
    dateTime: DateTime.now(),
    user: newUser,
    laundry: newlaundry,
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
