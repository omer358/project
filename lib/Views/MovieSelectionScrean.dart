import 'package:flutter/material.dart';
import 'package:untitled4/Views/BookingScrean.dart';

class Movieselectionscrean extends StatelessWidget {
  final List<Movie> movies = [
    Movie('Movie 1', 'lib/assets/images/im1.jpg', 10.0),
    Movie('Movie 2', 'lib/assets/images/im2.jpg', 12.0),
    Movie('Movie 3', 'lib/assets/images/im3.jpg', 8.0),
    Movie('Movie 4', 'lib/assets/images/im4.jpg', 15.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select a Movie')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              var movie;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bookingscrean(movie: movie[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(movies[index].imagePath, fit: BoxFit.cover),
                  SizedBox(height: 8),
                  Text(movies[index].title, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 4),
                  Text('\$${movies[index].price}', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
class Movie {
  final String title;
  final String imagePath;
  final double price;

  Movie(this.title, this.imagePath, this.price);
}