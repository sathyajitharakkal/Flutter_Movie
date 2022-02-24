import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:layered_arc/Movies/models/movies_response.dart';
import 'package:layered_arc/Movies/services/service_locator.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ServiceLocator serviceLocator;
  HomeCubit(this.serviceLocator) : super(HomeInitial._()){
    getMovieDetails();
  }

  getMovieDetails(){
    try {
      emit(HomeLoading());
      serviceLocator.api.getData((data) {
      MovieDetails movieDetails = movieDetailsFromJson(data);
      emit(HomeLoaded(movieDetails.data.movies));
    });
    } catch (e) {
      emit(HomeError());
    }
  }

  openDetails(BuildContext context, Movie movie){
    serviceLocator.navigationService.openMovieDetails(context, movie);
  }

  void release() {
    emit(HomeInitial._());
  }

}
