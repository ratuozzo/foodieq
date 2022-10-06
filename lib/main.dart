import 'package:flutter/material.dart';
import 'package:foodieq/presentation/app.dart';
import 'package:foodieq/injection/injector_container.dart' as injector;

void main() {
  injector.initializeDependencies();

  runApp(const MyApp());
}
