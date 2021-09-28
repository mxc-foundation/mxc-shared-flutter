class Application {
  /// ID of the application.
  final String id;

  /// Name of the application.
  final String name;
  final String? description;
  final String? organizationID;
  final String? serviceProfileID;
  final String? serviceProfileName;

  Application({
    required this.id,
    required this.name,
    this.description,
    this.organizationID,
    this.serviceProfileID,
    this.serviceProfileName,
  });
}
