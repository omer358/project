import 'package:flutter/material.dart';
class Bookingscrean extends StatelessWidget {
  final Movie movie;

  Bookingscrean({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ticket')),
      body: SingleChildScrollView( // إضافة SingleChildScrollView هنا
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Movie: ${movie.title}', style: TextStyle(fontSize: 10)),
              SizedBox(height: 20),
              Text('Ticket Price: \$${movie.price}', style: TextStyle(fontSize: 10)),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Movies'),
              ),
            ],
          ),
        ),
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