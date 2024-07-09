import 'package:flutter/material.dart';

class Model {
  final int id;
  final Icon icon;

  Model({
    required this.id,
    required this.icon,
  });
}

List<Model> navigationButton = [
  Model(id: 0, icon: const Icon(Icons.home)),
  Model(id: 1, icon: const Icon(Icons.location_on)),
  Model(id: 2, icon: const Icon(Icons.flip)),
  Model(id: 3, icon: const Icon(Icons.bar_chart)),
  Model(id: 4, icon: const Icon(Icons.widgets)),
];
