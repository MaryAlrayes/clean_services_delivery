import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_clean_services_delivery/core/utils/enums/enums.dart';

part 'drawer_navigation_state.dart';

class DrawerNavigationCubit extends Cubit<DrawerNavigationState> {
  DrawerNavigationCubit()
      : super(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.home));
  void getDrawerItem(NavigationLabelsDrawer navigationDrawer) {
    switch (navigationDrawer) {
      case NavigationLabelsDrawer.home:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.home));
        break;
      case NavigationLabelsDrawer.currentOrders:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.currentOrders));
        break;
      case NavigationLabelsDrawer.log:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.log));
        break;
      case NavigationLabelsDrawer.statistics:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.statistics));
        break;
      case NavigationLabelsDrawer.profile:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.profile));
        break;
      case NavigationLabelsDrawer.settings:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.settings));
        break;
      case NavigationLabelsDrawer.systemMethod:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.systemMethod));
        break;
      case NavigationLabelsDrawer.profitCalcMethod:
        emit(const DrawerNavigationState(
            navigationDrawer: NavigationLabelsDrawer.profitCalcMethod));
        break;
    }
  }
}
