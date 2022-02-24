import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:layered_arc/Movies/features/home/ui/home_screen_route_builder.dart';
import 'package:layered_arc/Movies/features/movie_details/ui/movie_details.dart';
import 'package:layered_arc/Movies/features/movie_details/ui/movie_details_route_builder.dart';
import 'package:layered_arc/Movies/models/movies_response.dart';
import 'package:layered_arc/Movies/navigation/navigation.dart';
import 'package:layered_arc/Movies/services/service_locator.dart';

class AppRoutesFactory extends RoutesFactory {
  final ServiceLocator _serviceLocator;
  AppRoutesFactory(this._serviceLocator);

  @override
  Route<dynamic> createHomePageRoute() {
    return MaterialPageRoute(builder: HomeScreenRouteBuilder(_serviceLocator));
  }

  @override
  Route createMovieDetailsPageRoute(Movie movie) {
    return MaterialPageRoute(builder: MovieDetailsScreenRouteBuilder(_serviceLocator, movie));
  }

}
