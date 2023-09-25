// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:saudi_clean_services_delivery/core/utils/services/shared_preferences.dart';

part 'working_state.dart';

abstract class WorkingDelivery {
  Future<void> cacheIsWorking(bool isWorking);
  Future<bool> getWorkingState();
}

class WorkingDeliveryImp implements WorkingDelivery {
  final kIsWorking = 'IS_WORKING';
  @override
  Future<void> cacheIsWorking(bool isWorking) async {
    await PreferenceUtils.setBool(kIsWorking, isWorking);
  }

  @override
  Future<bool> getWorkingState() {
    bool? isWorking = PreferenceUtils.getbool(
      kIsWorking,
    );
    if (isWorking != null) {
      return Future.value(isWorking);
    } else {
      return Future.value(false);
    }
  }
}

class WorkingCubit extends Cubit<WorkingState> {
  final WorkingDelivery workingDelivery;
  WorkingCubit({
   required this.workingDelivery,
  }
  ) : super(const WorkingState(isWorking: false));

  Future<void> getWorkingState() async {
    bool cachedWorkingState = await workingDelivery.getWorkingState();

    emit(
      WorkingState(isWorking: cachedWorkingState),
    );
  }

  Future<void> changeWorkingState(bool isWorking) async {
    await workingDelivery.cacheIsWorking(isWorking);
    emit(
      WorkingState(
        isWorking: isWorking,
      ),
    );
  }
}
