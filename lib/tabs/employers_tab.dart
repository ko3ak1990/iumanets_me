import 'package:flutter/material.dart';
import 'package:iumanets_me/config/experiences.dart';
import 'package:iumanets_me/widgets/project_widget.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width > 1200 ? 4 : width > 900 ? 3 : width > 600 ? 2 : 1;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MasonryGridView.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        itemCount: experiences.length,
        itemBuilder: (context, index) => ExperienceWidget(
          experience: experiences[index],
          imageSize: width / (crossAxisCount * 2.5),
        ),
      ),
    );
  }
}
