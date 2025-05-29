import 'package:iumanets_me/config/experiences.dart';
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
            (MediaQuery.of(context).size.height * 1.8),
        children: List.generate(
            projects.length,
            (index) =>
                ExperienceWidget(experience: projects[index], imageSize: 128)),
      ),
      mediumScreen: GridView.count(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.2),
        children: List.generate(
            projects.length,
            (index) =>
                ExperienceWidget(experience: projects[index], imageSize: 64)),
      ),
      smallScreen: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) =>
              ExperienceWidget(experience: projects[index])),
    );
  }
}
