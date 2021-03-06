part of 'navigation.dart';

abstract class RoutesFactory {
  Route<dynamic> createHomePageRoute();
  Route<dynamic> createMovieDetailsPageRoute(Movie movie);
}
