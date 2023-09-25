import 'package:flutter/material.dart';
import 'package:saudi_clean_services_delivery/core/managers/string_manager.dart';
import 'package:saudi_clean_services_delivery/features/auth/login/presentation/screens/login_screen.dart';
import 'package:saudi_clean_services_delivery/features/auth/signup/presentation/screens/signup_screen.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/data/order.dart';
import 'package:saudi_clean_services_delivery/features/current_orders.dart/presentation/screens/current_orders_details_screen.dart';
import 'package:saudi_clean_services_delivery/features/drawer_navigation/presentation/screens/homepage_screen.dart';
import 'package:saudi_clean_services_delivery/features/home/data/new_order.dart';
import 'package:saudi_clean_services_delivery/features/home/presentation/screens/new_order_details_screen.dart';
import 'package:saudi_clean_services_delivery/features/log/data/log_order.dart';
import 'package:saudi_clean_services_delivery/features/log/presentation/screens/log_order_details_screen.dart';
import 'package:saudi_clean_services_delivery/features/profile/data/delivery.dart';
import 'package:saudi_clean_services_delivery/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:saudi_clean_services_delivery/features/settings/presentation/screens/change_language_screen.dart';
import 'package:saudi_clean_services_delivery/features/settings/presentation/screens/change_password_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) =>  LoginScreen(),
        );

      case SignupScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );

      case HomepagScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const HomepagScreen(),
        );


      case CurrentOrdersDetailsScreen.routeName:
        final args = routeSettings.arguments as Map;
        Order order = args['order'];
        String label = args['label'];
        return MaterialPageRoute(
          builder: (context) =>
              CurrentOrdersDetailsScreen(order: order, label: label),
        );

      case NewOrderDetailsScreen.routeName:
        final args = routeSettings.arguments as Map;
        NewOrder order = args['order'];
        String label = args['label'];
        return MaterialPageRoute(
          builder: (context) =>
              NewOrderDetailsScreen(order: order, label: label),
        );
      case LogOrderDetailsScreen.routeName:
        final args = routeSettings.arguments as Map;
        LogOrder logOrder = args['log_order'];
        //  String label = args['label'];
        return MaterialPageRoute(
          builder: (context) => LogOrderDetailsScreen(logOrder: logOrder),
        );

      case EditProfileScreen.routeName:
        final args = routeSettings.arguments as Map;
        Delivery delivery = args['delivery'];
        return MaterialPageRoute(
          builder: (context) => EditProfileScreen(delivery: delivery),
        );

      case ChangePasswordScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => ChangePasswordScreen(),
        );

      case ChangeLanguageScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const ChangeLanguageScreen(),
        );
      default:
        return unDefinedRoute();
    }
  }

  Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
