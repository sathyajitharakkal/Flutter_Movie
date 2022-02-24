part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial._();
}

class HomeLoading extends HomeState {

}

class HomeLoaded extends HomeState {
  final List<Movie> movies;
  const HomeLoaded(this.movies);
}

class HomeError extends HomeState {

}


