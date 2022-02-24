part of 'navigation.dart';

Route<dynamic>? Function(RouteSettings settings) onGenerateAppRoute(
    RoutesFactory routesFactory) {
  return (RouteSettings settings) {
    switch (settings.name) {
      case _homePageRouteName:
        return routesFactory.createHomePageRoute();

      case _movieDetailsRouteName:
        final args = settings.arguments as MovieDetails;
        return routesFactory.createMovieDetailsPageRoute(args.movie);

      default:
        return routesFactory.createHomePageRoute();
    }
  };
}
