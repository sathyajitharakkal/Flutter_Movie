import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layered_arc/Movies/features/home/bloc/home_cubit.dart';
import 'package:layered_arc/Movies/models/movies_response.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if(state is HomeLoading){
                return const Center(child: CircularProgressIndicator());
              }else if(state is HomeLoaded){
                return showMoviesList(state.movies);
              }else if(state is HomeError){
                return const Center(
                child: Text("error loading Data")
                );
              }else{
                return const Center(
                child: Text("No Data available")
                );
              }
            }
          )
        
    );
  }
}

Widget showMoviesList(List<Movie> movies){
  return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  BlocProvider.of<HomeCubit>(context).openDetails(context, movies[index]);
                },
                child: Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movies[index].name),
                      Text(movies[index].year)
                    ],

                    ),
                  leading: Image.network(movies[index].thumbnail)
                ),
              ),
              ) 
              
            );
}
