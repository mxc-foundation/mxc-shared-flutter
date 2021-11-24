class Device {
  Device({
    required this.name,
    required this.category,
    this.lastSeen,
  });

  final String name;
  final String category;
  final DateTime? lastSeen;
}
