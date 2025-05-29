import 'package:iumanets_me/config/assets.dart';

import '../models/experience_model.dart';

final List<Experience> projects = [
  Experience(
    company: 'Albert Heijn',
    role: 'Senior Android Developer',
    location: 'Zaandam, Netherlands',
    dateRange: 'Sep 2023 – Present',
    context: 'Assortment/Search | Digital Shop',
    achievements: [
      'Migrated codebase to convention-based Gradle plugins, improving maintainability.',
      'Reduced build time by through Gradle optimizations.',
      'Introduced baseline profiles, significantly improving app startup time.',
      'Contributed to Kotlin Multiplatform migration of in-house A/B testing SDK.',
      'Involved in Jetpack Compose design system development.',
    ],
    logoAsset: Assets.albert_heijn,
    link: 'https://www.ah.nl/',
  ),
  Experience(
    company: 'Data.ai',
    role: 'Senior Android Developer',
    location: 'Utrecht, Netherlands',
    dateRange: 'Jun 2022 – Jul 2023',
    context: 'Data Acquisition Department | EMEA',
    achievements: [
      'Supported apps with 1M+ DAU, 50M+ downloads, and 4.0+ Play Store ratings.',
      'Migrated 7 production apps to Hilt for modern dependency injection.',
      'Reduced crash rate to below 0.5% across Android apps.',
      'Collaborated on Android 12/13 permission redesign, improving success flows by 50%.',
      'Introduced Maestro UI testing, reaching 60% coverage overall, 100% for critical flows.',
    ],
    logoAsset: Assets.data_ai,
    link: "https://www.data.ai/en/",
  ),
  Experience(
    company: 'EPAM',
    role: 'Senior Android Developer',
    location: 'Kyiv, Ukraine',
    dateRange: 'Sep 2017 – May 2022',
    context: 'Contractor for Nordstrom, QVC, AXS | USA',
    achievements: [
      'Led a team of 4 Android engineers in distributed teams.',
      'Participated in 25+ hiring interviews, directly onboarding 5 new engineers.',
      'Maintained cross-functional communication across remote teams.',
      'Completed “Flutter for Mobile Developers” course to expand cross-platform expertise.',
    ],
    logoAsset: Assets.epam,
    link: "https://www.epam.com/",
  ),
  Experience(
    company: 'Edsson Software',
    role: 'Android Developer',
    location: 'Kyiv, Ukraine',
    dateRange: 'Mar 2014 – Sep 2017',
    context: 'Contractor for KPN, Vaillant, Leica | Netherlands',
    achievements: [
      'Designed architecture, implemented logic, and managed client communication.',
      'Improved project delivery by 20% through team collaboration and optimization.',
    ],
    logoAsset: Assets.edsson,
    link: "https://edsson.com/en/",
  ),
];
