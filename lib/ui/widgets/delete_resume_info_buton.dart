import 'package:flutter/material.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/usecases/delete_resume_data.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteResumeItemButton extends StatelessWidget {
  final int id;
  final ResumeType type;
  const DeleteResumeItemButton({
    required this.id,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => PopUpConfirmation(
              message: 'Are you sure to delete the resume item?',
              onConfirmed: () {
                // getIt<ResumeWatcherBloc>().add(
                context.read<ResumeWatcherBloc>().add(
                    ResumeWatcherEvent.deleteResumeData(
                        DeleteResumeDataParams(type: type, id: id)));
                context
                    .read<ResumeWatcherBloc>()
                    .add(const ResumeWatcherEvent.getResumeData());
                context.popRoute();
              },
            ),
          );
        },
        icon: Icon(Icons.delete_forever_outlined, color: Colors.red));
  }
}
