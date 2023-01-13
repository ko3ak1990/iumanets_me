import 'package:iumanets_me/config/employer.dart';
import 'package:iumanets_me/widgets/project_widget.dart';
import 'package:iumanets_me/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height * 1.3 ),
          children: List.generate(
              projects.length, (index) => ProjectWidget(projects[index], 0)),
        ),
      mediumScreen: GridView.count(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height /1.2),
        children: List.generate(
            projects.length, (index) => ProjectWidget(projects[index], 0)),
      ),
      smallScreen: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) => ProjectWidget(
              projects[index], (index == projects.length - 1 ? 16.0 : 0))),
    );
  }
}
