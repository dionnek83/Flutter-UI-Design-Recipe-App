import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  FavouritesState createState() => FavouritesState();
}

class FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "Favourites",
            style: GoogleFonts.sofia(
                textStyle:
                    const TextStyle(fontSize: 30, color: Color(0xFFFA8072))),
          ),
        ),
      ),
    );
  }
}
