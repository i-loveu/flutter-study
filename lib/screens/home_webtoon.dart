import 'package:flutter/material.dart';
import 'package:uiclone1/models/movie.dart';
import 'package:uiclone1/services/api_service.dart';
import 'package:uiclone1/widgets/movie_widget.dart';

class HomeWebtoon extends StatelessWidget {
  HomeWebtoon({super.key});

  final Future<List<MovieModel>> movies = ApiService.getPopularMovies();
  // final Future<List<MovieModel>> nows = ApiService.getNowPlayings();
  // final Future<List<MovieModel>> commings = ApiService.getcomingSoons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            FutureBuilder(
              future: movies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      const Text(
                        "Popular Movies",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: makeList(snapshot),
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      // itemCount: snapshot.data!.length,
      itemCount: 1,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      itemBuilder: (context, index) {
        var movie = snapshot.data![index];
        return MovieCard(
          title: movie.title,
          thumb: 'https://image.tmdb.org/t/p/w500${movie.poster_path}',
          id: movie.id,
          overview: movie.overview,
          genreIds: [movie.genre_ids],
          adult: movie.adult,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
    );
  }
}
