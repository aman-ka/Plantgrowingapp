import 'dart:convert';

class Plant {
  final String name,
      place,
      url,
      waterdays,
      fertdays,
      title,
      description,
      title2;
  final double price;

  const Plant({
    required this.name,
    required this.place,
    required this.url,
    required this.price,
    required this.fertdays,
    required this.waterdays,
    required this.title,
    required this.title2,
    required this.description,
  });
}
