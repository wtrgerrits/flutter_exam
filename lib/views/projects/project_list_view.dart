import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/blocs/project_bloc/project_bloc.dart';
import 'package:flutter_exam_wouter/models/project_model.dart';
import 'package:flutter_exam_wouter/views/projects/project_detail_view.dart';

class ProjectsListView extends StatelessWidget {
  /// {@macro app_view}
  const ProjectsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, List<Project>>(builder: (context, state) {
      if (state.isEmpty) {
        return (const Center(child: CircularProgressIndicator()));
      }

      return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) => Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProjectViewDetail(state[index])),
                    );
                  },
                  leading: Column(
                    children: [
                      Image.asset(
                          'assets/pictures/' + state[index].image + '.jpg',
                          width: 50,
                          height: 50),
                    ],
                  ),
                  title: Text(state[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(state[index].location))));
    });
  }
}
