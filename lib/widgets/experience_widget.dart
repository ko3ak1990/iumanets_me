import 'package:flutter/material.dart';
import 'package:iumanets_me/models/experience_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceWidget extends StatelessWidget {
  final Experience experience;
  final double imageSize;

  const ExperienceWidget({
    super.key,
    required this.experience,
    this.imageSize = 96, // set default logo size here
  });

  @override
  Widget build(BuildContext context) {
    // Bullet points for achievements, no "Show more" limit
    final bulletWidgets = experience.achievements
        .map((point) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              point,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    ))
        .toList();

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () => onProjectClick(experience.link),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (experience.logoAsset != null) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    experience.logoAsset!,
                    height: imageSize,
                    width: imageSize,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 14),
              ],
              Text(
                experience.company,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                experience.role,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "${experience.location} • ${experience.dateRange}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              if (experience.context != null) ...[
                const SizedBox(height: 6),
                Text(
                  experience.context!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[700],
                  ),
                ),
              ],
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: bulletWidgets,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick(String? link) {
    if (link != null) {
      launchUrl(Uri.parse(link));
    }
  }
}