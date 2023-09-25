// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'working_cubit.dart';

class WorkingState extends Equatable {
  final bool isWorking;
  const WorkingState({
   required this.isWorking,
  }
  );

  @override
  List<Object> get props => [isWorking];
}


