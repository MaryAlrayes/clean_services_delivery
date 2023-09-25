import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit/working_cubit.dart';
import '../widgets/not_working_content.dart';
import '../widgets/working_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkingCubit, WorkingState>(
      builder: (context, state) {
        if (state.isWorking) {
          return _buildWorkingContent();
        } else {
          return _buildNotWorkingContent();
        }
      },
    );
  }

  Widget _buildWorkingContent() {
    return const WorkingContent();
  }

  Widget _buildNotWorkingContent() {
    return const NotWorkingContent();
  }
}
