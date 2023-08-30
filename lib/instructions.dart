import 'package:recipe_app/recipes.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Column(children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: recipe.instructions.length,
                itemBuilder: (BuildContext context, int index) {
                  var step = index + 1;
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: IntrinsicHeight(
                          child: Row(children: [
                        Text(step.toString(),
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        const VerticalDivider(
                          color: Color(0xFFFA8072),
                          thickness: 1.5,
                        ),
                        Flexible(
                            child: Text(recipe.instructions[index],
                                style: const TextStyle(fontSize: 17)))
                      ])));
                },
              )
            ])));
  }
}
