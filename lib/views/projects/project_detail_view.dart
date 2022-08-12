import 'package:flutter/material.dart';
import 'package:flutter_exam_wouter/models/project_model.dart';

class ProjectViewDetail extends StatelessWidget {
  const ProjectViewDetail(this.project, {Key? key}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 15)),
                child: Image.asset('assets/' + project.image + '.jpg'),
              ),
              ListTile(
                  title: Text(project.name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(project.location)),
              Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: Text(project.description))
            ]),
          ),
        );
      },
    );
  }
}
