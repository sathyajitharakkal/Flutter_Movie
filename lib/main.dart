import 'package:flutter/material.dart';
import 'package:layered_arc/Movies/features/home/ui/home_screen.dart';
import 'package:layered_arc/Movies/services/service_locator.dart';
import 'package:layered_arc/movies.dart';


void main() {
  const environment = String.fromEnvironment('FLAVOR', defaultValue: 'staging');
  const baseUrl = String.fromEnvironment('BASE_URL',
      defaultValue:'http://165.22.75.82/v1');

  const initialRoute =
      String.fromEnvironment('INITIAL_ROUTE', defaultValue: '/home');


  ServiceLocator locator = ServiceLocator(baseUrl: baseUrl)..config();
  runApp(MoviesApp(
    initialRoute: initialRoute,
    serviceLocator: locator
  ));
}
