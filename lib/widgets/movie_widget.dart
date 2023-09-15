import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title, thumb, overview;
  final int id;
  final bool adult;
  final List genreIds;
  const MovieCard(
      {super.key,
      required this.title,
      required this.thumb,
      required this.overview,
      required this.id,
      required this.genreIds,
      required this.adult});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(children: [
        Hero(
          tag: id,
          child: Container(
            width: 200,
            height: 150,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
              thumb,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ]),
    );
  }
}
