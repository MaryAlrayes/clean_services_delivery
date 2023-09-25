import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'outcome_event.dart';
part 'outcome_state.dart';

class OutcomeBloc extends Bloc<OutcomeEvent, OutcomeState> {
  OutcomeBloc() : super(OutcomeInitial()) {
    on<CalculateOutcomeEvent>((event, emit) async {
      emit(OutcomeLoading());
     await Future.delayed(const Duration(seconds: 2));
        emit(OutcomeResultState(outcome: 150));

    });

    on<DoneOutcomeEvent>((event, emit) {
      emit(EmptyLogState());
    });
  }
}
