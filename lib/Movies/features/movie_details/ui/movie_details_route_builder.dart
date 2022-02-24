import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layered_arc/Movies/features/movie_details/bloc/movie_details_cubit.dart';
import 'package:layered_arc/Movies/features/movie_details/ui/movie_details.dart';
import 'package:layered_arc/Movies/models/movies_response.dart';
import 'package:layered_arc/Movies/services/service_locator.dart';

class MovieDetailsScreenRouteBuilder{
  final ServiceLocator serviceLocator;
  final Movie movie;
  MovieDetailsScreenRouteBuilder(this.serviceLocator, this.movie);

  Widget call(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MovieDetailsCubit(serviceLocator, movie)),
      ], child: MovieDetailsScreen(),
    );
  }
}