import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:layered_arc/Movies/models/movies_response.dart';
import 'package:layered_arc/Movies/services/service_locator.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final ServiceLocator;
  final Movie movie;
  MovieDetailsCubit(this.ServiceLocator, this.movie) : super(MovieDetailsInitial(movie));
}
