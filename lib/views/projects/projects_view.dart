import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/project_bloc/project_bloc.dart';
import 'package:flutter_exam_wouter/views/projects/project_list_view.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsCubit>(
        create: (context) => ProjectsCubit()..projects,
        child: const ProjectsListView());
  }
}
