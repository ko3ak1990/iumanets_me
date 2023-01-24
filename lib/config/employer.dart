import 'package:iumanets_me/models/project_model.dart';
import 'assets.dart';

final List<Employer> projects = [
  Employer(
      name: 'Data.ai Netherlands',
      image: Assets.data_ai,
      description:
          'Working in data acquisition department. Responsible for application development with millions of active users:\n• VPN app\n• File Manager\n• Data Plan Manager',
      link: 'https://www.data.ai/en/about/'),
  Employer(
      name: 'EPAM Ukraine',
      image: Assets.epam,
      description:
          'Worked on three different projects in following areas:\n• Ticketing service for leading US company\n• B2B app for US rental agency\n• E-commerce application for international company',
      link: 'https://www.epam.com//about'),
  Employer(
      name: 'Edsson Software Ukraine',
      image: Assets.edsson,
      description:
          'Out staffing.Worked on various mobile projects:\n• B2B application for leading retailer of gas equipment\n• B2C application for telecom provider',
      link: 'https://www.edsson.com'),
];
