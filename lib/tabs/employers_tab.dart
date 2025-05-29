import 'package:flutter/material.dart';
import 'package:iumanets_me/config/experiences.dart';
import 'package:iumanets_me/widgets/experience_widget.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final crossAxisCount = calculateCrossAxisCount(screenWidth);
    final aspectRatio = calculateAspectRatio(screenWidth, crossAxisCount,screenHeight);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: experiences.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: aspectRatio,
        ),
        itemBuilder: (context, index) => ExperienceWidget(
          experience: experiences[index],
          imageSize: screenWidth /
              (crossAxisCount * 2.5), // adjust image size as needed
        ),
      ),
    );
  }

  int calculateCrossAxisCount(double width) {
    if (width >= 1200) return 3;
    if (width >= 600) return 2;
    return 1;
  }

  double calculateAspectRatio(double width, int crossAxisCount,double height) {
    if(crossAxisCount ==1) return 3/4;
    double cardWidth =
        (width - 32 - (crossAxisCount - 1) * 16) / crossAxisCount;
    double cardHeight = cardWidth * (height/width * 2); // Adjust as needed for your design
    return cardWidth / cardHeight;
  }
}
