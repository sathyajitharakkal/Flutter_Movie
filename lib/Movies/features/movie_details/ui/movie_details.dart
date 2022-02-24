import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layered_arc/Movies/features/movie_details/bloc/movie_details_cubit.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  _MovieDetailsScreenState createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
            builder: (context, state) {
          if (state is MovieDetailsInitial) {
            return Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    state.movie.name,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Image.network(
                    state.movie.thumbnail,
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    height: height / 2,
                    width: height / 2 * 0.8,
                  ),

                  Container(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.movie.genres.length,
                      itemBuilder: (context, index) => Container(
                        height: 12,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(3),
                        color: Colors.blue,
                        child: Text(state.movie.genres[index],
                            style: const TextStyle(
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  
                  Text(
                    state.movie.year,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    state.movie.director,
                    style: const TextStyle(color: Colors.black),
                  ),
                  // Spacer(),
                  Text(
                    state.movie.mainStar,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    state.movie.description,
                    style: const TextStyle(color: Colors.black),
                  ),
                  
                ]));
          } else {
            return Center(
              child: Text("X"),
            );
          }
        }));
  }
}
