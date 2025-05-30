class Experience {
  final String company; // "Albert Heijn"
  final String role; // "Senior Android Developer"
  final String location; // "Zaandam, Netherlands"
  final String dateRange; // "Sep 2023 – Present"
  final String? context; // "Assortment/Search | Digital Shop"
  final List<String> achievements; // Bulleted achievements
  final String? logoAsset;
  final String? link; // Optional url for more information

  Experience(
      {required this.company,
      required this.role,
      required this.location,
      required this.dateRange,
      this.context,
      required this.achievements,
      this.logoAsset,
      this.link});
}
