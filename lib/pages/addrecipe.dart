import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({Key? key}) : super(key: key);

  @override
  AddRecipeState createState() => AddRecipeState();
}

class AddRecipeState extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "AddRecipe",
            style: GoogleFonts.sofia(
                textStyle:
                    const TextStyle(fontSize: 30, color: Color(0xFFFA8072))),
          ),
        ),
      ),
    );
  }
}
