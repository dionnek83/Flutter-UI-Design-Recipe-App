import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/pages/recipedetails.dart';
import 'package:recipe_app/recipes.dart';
import 'package:progressive_image/progressive_image.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(left: 40, top: 40),
                  child: Text("Hi Tracy,",
                      style: GoogleFonts.sofia(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFFFA8072)))),
                )),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "What would you like to eat?",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[30],
                        contentPadding: const EdgeInsets.all(20.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade100, width: 2),
                            borderRadius: BorderRadius.circular(30.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFFFA8072), width: 2),
                            borderRadius: BorderRadius.circular(30.0)),
                        hintText: 'Search Recipe',
                        hintStyle: TextStyle(color: Colors.grey[350]),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close, color: Colors.grey[350])),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[350],
                        )))),
            getRecipes(context)
          ],
        ));
  }
}

Widget getRecipes(context) {
  return Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              children: List<Widget>.generate(
                  recipes.length,
                  (index) => Container(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        RecipeDetails(recipe: recipes[index])));
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: ProgressiveImage(
                                        placeholder: const AssetImage(
                                            'assets/placeholder.png'),
                                        thumbnail:
                                            AssetImage(recipes[index].image),
                                        image: AssetImage(recipes[index].image),
                                        height: 100,
                                        width: 150,
                                        alignment: Alignment.center,
                                        fit: BoxFit.cover),
                                  ),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: PopupMenuButton(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            height: 36,
                                            width: 48,
                                            alignment: Alignment.topRight,
                                            child: const Icon(Icons.more_vert,
                                                size: 35,
                                                color: Color(0xFFFA8072)),
                                          ),
                                          onSelected: (value) {},
                                          itemBuilder: (context) => [
                                                PopupMenuItem(
                                                    onTap: () {},
                                                    child: Column(children: [
                                                      FloatingActionButton
                                                          .extended(
                                                        onPressed: () {},
                                                        label: const Text(
                                                          "Edit",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        icon: const Icon(
                                                            Icons.edit_outlined,
                                                            color: Color(
                                                                0xFFFA8072)),
                                                        elevation: 0.0,
                                                        backgroundColor:
                                                            Colors.white,
                                                      ),
                                                      FloatingActionButton
                                                          .extended(
                                                        onPressed: () {},
                                                        label: const Text(
                                                          "Delete",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        icon: const Icon(
                                                            Icons
                                                                .delete_outline,
                                                            color: Color(
                                                                0xFFFA8072)),
                                                        elevation: 0.0,
                                                        backgroundColor:
                                                            Colors.white,
                                                      )
                                                    ]))
                                              ])),
                                ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 5),
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: recipes[index].favourite
                                            ? const Icon(
                                                FluentIcons.heart_28_filled,
                                                size: 25,
                                                color: Color(0xFFFA8072),
                                              )
                                            : const Icon(
                                                FluentIcons.heart_28_regular,
                                                size: 25,
                                              ),
                                      ),
                                      Text("${recipes[index].duration} min",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500))
                                    ]),
                                Flexible(
                                  child: Text(
                                    recipes[index].title,
                                    style: GoogleFonts.sofia(
                                        textStyle: const TextStyle(
                                      fontSize: 15,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    recipes[index].description,
                                    style: const TextStyle(
                                      fontSize: 10,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ])))))));
}





 


// Widget getRecipes(context) {
//   return Expanded(
//       child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//           child: GridView.count(
//               crossAxisCount: 2,
//               childAspectRatio: 0.8,
//               children: List<Widget>.generate(
//                   recipes.length,
//                   (index) => Container(
//                       padding: const EdgeInsets.all(8.0),
//                       child: GestureDetector(
//                           onTap: () {},
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.stretch,
//                               children: <Widget>[
//                                 Stack(children: [
//                                   ClipRRect(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                       child: ProgressiveImage(
//                                         placeholder: const AssetImage(
//                                             'assets/placeholder.png'),
//                                         thumbnail:
//                                             AssetImage(recipes[index].image),
//                                         image: AssetImage(recipes[index].image),
//                                         height: 100,
//                                         width: 150,
//                                         alignment: Alignment.center,
//                                         fit: BoxFit.cover,
//                                       )),
//                                   Align(
//                                       alignment: Alignment.topRight,
//                                       child: PopupMenuButton(
//                                           child: Container(
//                                             padding:
//                                                 const EdgeInsets.only(top: 5),
//                                             height: 36,
//                                             width: 48,
//                                             alignment: Alignment.topRight,
//                                             child: const Icon(Icons.more_vert,
//                                                 size: 35,
//                                                 color: Color(0xFFFA8072)),
//                                           ),
//                                           onSelected: (value) {},
//                                           itemBuilder: (context) => [
//                                                 PopupMenuItem(
//                                                     child: Column(children: [
//                                                   FloatingActionButton.extended(
//                                                     onPressed: () {},
//                                                     label: const Text("Edit",
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.black)),
//                                                     icon: const Icon(
//                                                         Icons.edit_outlined,
//                                                         color:
//                                                             Color(0xFFFA8072)),
//                                                     elevation: 0.0,
//                                                     backgroundColor:
//                                                         Colors.white,
//                                                   ),
//                                                   FloatingActionButton.extended(
//                                                     onPressed: () {},
//                                                     label: const Text("Delete",
//                                                         style: TextStyle(
//                                                             color:
//                                                                 Colors.black)),
//                                                     icon: const Icon(
//                                                         Icons.delete_outline,
//                                                         color:
//                                                             Color(0xFFFA8072)),
//                                                     elevation: 0.0,
//                                                     backgroundColor:
//                                                         Colors.white,
//                                                   ),
//                                                 ]))
//                                               ]))
//                                 ]),
//                                 Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       IconButton(
//                                           padding: const EdgeInsets.only(
//                                               top: 10, bottom: 5),
//                                           onPressed: () {},
//                                           icon: recipes[index].favourite
//                                               ? const Icon(
//                                                   FluentIcons.heart_28_filled,
//                                                   size: 20,
//                                                   color: Color(0xFFFA8072),
//                                                 )
//                                               : const Icon(
//                                                   FluentIcons.heart_28_regular,
//                                                   size: 20)),
//                                       Text("${recipes[index].duration} min",
//                                           style: const TextStyle(
//                                               fontWeight: FontWeight.w500))
//                                     ]),
//                                 Flexible(
//                                     child: Text(
//                                   recipes[index].title,
//                                   style: GoogleFonts.sofia(
//                                       textStyle: const TextStyle(fontSize: 15)),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 )),
//                                 Flexible(
//                                     child: Text(
//                                   recipes[index].description,
//                                   style: const TextStyle(fontSize: 10),
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                 )),
//                               ])))))));
// }
