// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'outcome_bloc.dart';

abstract class OutcomeState extends Equatable {
  const OutcomeState();

  @override
  List<Object> get props => [];
}

class OutcomeInitial extends OutcomeState {}

class OutcomeLoading extends OutcomeState {}

class OutcomeResultState extends OutcomeState {
  final double outcome;
  const OutcomeResultState({
    required this.outcome,
  });
  @override
  List<Object> get props => [outcome];
}

class EmptyLogState extends OutcomeState{}
