import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/ingredients.dart';
import 'package:recipe_app/instructions.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:readmore/readmore.dart';
import 'package:recipe_app/recipes.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  RecipeDetailsState createState() => RecipeDetailsState();
}

class RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SlidingUpPanel(
        parallaxEnabled: true,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        minHeight: (size.height / 1.8),
        maxHeight: size.height,
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12)),
              )),
              const SizedBox(height: 35),
              Text(
                widget.recipe.title,
                style:
                    GoogleFonts.sofia(textStyle: const TextStyle(fontSize: 25)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFA8072),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Column(children: <Widget>[
                        const Icon(FluentIcons.clock_28_regular,
                            color: Colors.white, size: 38),
                        const SizedBox(height: 3),
                        Text("${widget.recipe.duration} minutes")
                      ]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFA8072),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(children: <Widget>[
                        const Icon(FluentIcons.bowl_chopsticks_28_regular,
                            color: Colors.white, size: 38),
                        const SizedBox(height: 3),
                        Text(widget.recipe.mealtype)
                      ]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFA8072),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Column(children: <Widget>[
                        const Icon(FontAwesomeIcons.utensils,
                            color: Colors.white, size: 38),
                        const SizedBox(height: 3),
                        Text("${widget.recipe.servings} servings")
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text('Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 10),
              ReadMoreText(
                widget.recipe.description,
                style: const TextStyle(fontSize: 15, color: Colors.black),
                trimLines: 3,
                colorClickableText: const Color(0xFFFA8072),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle:
                    const TextStyle(fontSize: 15, color: Color(0xFFFA8072)),
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30)),
                      width: MediaQuery.of(context).size.width,
                      child: TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(
                            color: const Color(0xFFFA8072),
                            borderRadius: BorderRadius.circular(30)),
                        tabs: [
                          SizedBox(
                              // ignore: sort_child_properties_last
                              child: Tab(
                                  text:
                                      "Ingredients (${widget.recipe.ingredients.length})"),
                              width: MediaQuery.of(context).size.width / 3),
                          SizedBox(
                              // ignore: sort_child_properties_last
                              child: Tab(
                                  text:
                                      "Instructions (${widget.recipe.instructions.length})"),
                              width: MediaQuery.of(context).size.width / 3),
                        ],
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        labelStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 25),
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        Ingredients(recipe: widget.recipe),
                        Instructions(recipe: widget.recipe)
                      ],
                    ))
                  ],
                ),
              ))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: widget.recipe.image,
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        image: AssetImage(widget.recipe.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 40,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: widget.recipe.favourite
                          ? const Icon(FluentIcons.heart_28_filled,
                              size: 25, color: Color(0xFFFA8072))
                          : const Icon(FluentIcons.heart_28_regular,
                              size: 25, color: Color(0xFFFA8072))),
                ),
              ),
              Positioned(
                  top: 40,
                  left: 20,
                  child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFFA8072),
                        radius: 30,
                        child: Icon(CupertinoIcons.back,
                            color: Colors.black, size: 25),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
