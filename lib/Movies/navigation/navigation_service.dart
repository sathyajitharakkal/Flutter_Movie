part of 'navigation.dart';

class NavigationService {
  Future<void> openHome(BuildContext context) {
    return Navigator.of(context).popAndPushNamed(_homePageRouteName);
  }

  Future<void> openMovieDetails(BuildContext context, Movie movie) {
    return Navigator.of(context).pushNamed(_movieDetailsRouteName, arguments: MovieDetails(movie));
  }
}
