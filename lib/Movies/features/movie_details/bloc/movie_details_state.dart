part of 'movie_details_cubit.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();

  @override
  List<Object> get props => [];
}

class MovieDetailsInitial extends MovieDetailsState {
  final Movie movie;

  MovieDetailsInitial(this.movie);
  
}

class MovieDetailsTest extends MovieDetailsState {
  MovieDetailsTest();
  
}


