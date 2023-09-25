part of 'outcome_bloc.dart';

abstract class OutcomeEvent extends Equatable {
  const OutcomeEvent();

  @override
  List<Object> get props => [];
}

class CalculateOutcomeEvent extends OutcomeEvent{}
class DoneOutcomeEvent extends OutcomeEvent{}
