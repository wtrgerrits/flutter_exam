import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_wouter/models/project_model.dart';
import 'package:flutter_exam_wouter/services/project_service.dart';

class ProjectsCubit extends Cubit<List<Project>> {
  final _projectService = ProjectService();
  ProjectsCubit() : super([]);

  void get projects async => emit(await _projectService.getProjects());
}
