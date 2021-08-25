class Device {
  final String name;
  final String category;
  final DateTime? lastSeen;

  Device({
    required this.name,
    required this.category,
    this.lastSeen,
  });
}
