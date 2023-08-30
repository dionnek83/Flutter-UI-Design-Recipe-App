class Recipe {
  String title;
  String image;
  String description;
  String servings;
  String mealtype;
  String duration;
  List ingredients;
  List instructions;
  bool favourite;

  Recipe(
      {required this.title,
      required this.image,
      required this.description,
      required this.servings,
      required this.mealtype,
      required this.duration,
      required this.ingredients,
      required this.instructions,
      required this.favourite});
}

// Recipes data
List<Recipe> recipes = [
  Recipe(
      title: 'Pizza',
      image: 'assets/pizza.jpg',
      description:
          "Pizza from scratch in under an hour. Much better than the ones you buy! Use your favorite toppings.",
      servings: "4",
      mealtype: "dinner",
      duration: '45',
      ingredients: [
        "2 1⁄2 cups flour",
        " 1 teaspoon salt",
        " 1 teaspoon sugar",
        " 1 tablespoon fast rise yeast",
        "1 cup water (120*)",
        "1 tablespoon oil",
        "1⁄4 cup tomato sauce",
        "1 teaspoon italian seasoning",
        "1⁄2 teaspoon garlic powder",
        "1⁄2 teaspoon salt",
        "1⁄8 teaspoon pepper",
        "1 1⁄2 cups pepperoni slices",
        "1 cup shredded mozzarella cheese",
        "1 cup shredded monterey jack cheese",
        "3 tablespoons grated parmesan cheese"
      ],
      instructions: [
        "In large bowl, mix first 4 ingredients.",
        "Mix water and oil; add to flour mixture.",
        "Place in a greased bowl; turning to grease top.",
        "Cover and let rise for 20 minutes.",
        "Punch down; place on 12in, greased pizza pan.",
        "Pat into a circle.",
        "Topping: Mix first 5 ingredients and spread over crust.",
        "Sprinkle with 1/2 the mozzeralla; 1/2 the monterey jack, and 1/2 the parmesan.",
        "Put the rest of the pepperoni on.",
        "Repeat the cheese layer.",
        "Bake at 400* for 20 minutes or until light brown."
      ],
      favourite: true),
  Recipe(
      title: 'Mixed Vegetable Salad with Eggs',
      image: 'assets/egg_salad.jpg',
      description:
          "A salad of green beans, potatoes, hard-boiled eggs, tomatoes and olives.",
      servings: "2",
      mealtype: "lunch",
      duration: '30',
      ingredients: [
        "1 potato",
        "2/3 cup	green/snap beans",
        "1 tomato,sliced",
        "1/4 curly leaf lettuce",
        "1 large egg",
        "6 black olives",
        "3tbsp classic vinaigrette",
        "1 pinch salt (optional)",
        "1 pinch ground peper to taste (optional)"
      ],
      instructions: [
        "Prepare the vegetables: wash the potatoes then let them whole, unpeeled; trim the ends of the green beans. Place the vegetables in a steamer basket or in a pot of salted water to either boil or steam until al dente, about 20 min. Let them cool down 10 min or longer, so they won't be so hot to handle. Cut the potatoes into slices, cut the beans into pieces.",
        "Boil the egg(s), cool them down immediately in cold water, then cut into quarters.",
        "Put all the vegetables in a salad bowl or serving plate. Add the tomatoes. Pour on the classic vinaigrette, then season with salt and pepper to taste. Toss well.",
        "Arrange the olives, salad leaves, and quartered egg(s) on top of the salad, then serve."
      ],
      favourite: false),
  Recipe(
      title: 'Steak with Grilled Vegetables',
      image: 'assets/steak.jpg',
      description:
          "The ideal combination- great taste, easy to prepare and low in fat",
      servings: "2",
      mealtype: "dinner",
      duration: '60',
      ingredients: [
        "2 quality steaks, sirloin, striploin or fillet (must be well aged to ensure tenderness)",
        "75-100g green vegetables e.g. green beans, mange-tout, asparagus ",
        "1 red pepper, deseeded and cut into strips ",
        "1 small red onion, peeled and sliced ",
        "1-2 tablesp. olive oil )",
        "Salt and lots of black pepper)",
        "1 tablesp. Balsamic or wine vinegar)",
      ],
      instructions: [
        " Heat the grill/pan to maximum, a cast iron ridged pan gives excellent results.",
        "Place the steaks in a shallow dish, and place the prepared vegetables in a bowl.",
        "Mix together the oil, salt, black pepper and balsamic vinegar. Pour half the mixture over the steaks and the remainder over the vegetables, mix well.",
        "Place the steaks on the grill pan and cook for 2 minutes, then turn to sear the other side.  Leave to cook for two minutes before turning again. Continue to cook, allowing a total of 3-6 minutes on each side, depending on how thick the steak is and how you like it cooked.",
        "Remove to a plate and keep warm while you cook the vegetables. ",
        "Place the vegetables on the hot pan and cook for 4-5 minutes. Serve with jacket boiled potatoes",
      ],
      favourite: true),
  Recipe(
      title: 'Strawberry Cake',
      image: 'assets/strawberry_cake.jpeg',
      description:
          "This strawberry cake is easy to make from scratch with strawberry puree and strawberry gelatin. This recipe is worth its weight in gold to me as a caterer. I made this cake for a child's birthday party and it was a major hit! Frost with cream cheese frosting or chocolate ganache for a special treat.",
      servings: "14",
      mealtype: "dessert",
      duration: '50',
      ingredients: [
        " 2 cups white sugar",
        "1 cup butter, softened",
        "1 (3 ounce) package strawberry flavored Jell-O®",
        "4 large eggs (room temperature)",
        "2 ¾ cups sifted cake flour",
        "2 ½ teaspoons baking powder",
        "1 cup whole milk, room temperature",
        "½ cup strawberry puree made from frozen sweetened strawberries",
        "1 tablespoon vanilla extract",
      ],
      instructions: [
        "Preheat the oven to 350 degrees F (175 degrees C). Grease and flour two 9-inch round cake pans.",
        "Beat sugar, butter, and dry strawberry gelatin together in a large bowl with an electric mixer until light and fluffy. Add eggs one at a time, beating well after each addition.",
        "Combine flour and baking powder in a large bowl; stir into butter mixture alternately with milk.",
        "Blend in strawberry puree and vanilla.",
        "Divide batter evenly between the prepared pans.",
        "Bake in the preheated oven until a toothpick inserted into the center comes out clean, about 25 to 30 minutes. Cool cakes on a wire rack for 10 minutes; run a table knife around the edges to loosen. Invert carefully onto a serving plate or cooling rack to cool completely.",
        "Enjoy!"
      ],
      favourite: false),
  Recipe(
      title: 'Chunky vegetable clam chowder',
      image: 'assets/clam_veg.jpg',
      description:
          "While we have enjoyed a good many recipes since, this one has become not only our favorite but a given for our evening meal on Christmas Eve 'our family tradition in the making' We often add an extra can of clams. The original recipe calls for an optional 1/2 teaspoon Curry Powder which we have yet to give a try. Serving size - a guesstimate!",
      servings: "6",
      mealtype: "dinner",
      duration: '45',
      ingredients: [
        "3 slices bacon (may add an extra slice or two)",
        "2 cups cubed potatoes (I often add more)",
        "1 cup coarsely chopped carrot (I use a very coarse grate)",
        "1⁄2 cup chopped onion (I like to use leeks)",
        "1⁄2 cup chopped celery, I add the celery (optional)",
        "1 (10 3/4 ounce) can condensed chicken broth (I use chicken stock)",
        "1 (6 1/2 ounce) can minced clams (drained and liquid reserved)",
        "1 (12 ounce) can evaporated milk (I use half and half or cream)",
        "1⁄2 teaspoon salt (or to taste)",
        "1⁄8 teaspoon pepper",
        "2 tablespoons freshly chopped fresh parsley",
        "2 tablespoons shortening (I use Crisco)",
        "2 tablespoons flour",
      ],
      instructions: [
        "In a large pot add bacon (I cut into bite size pieces) saute lightly.",
        "Add in onions (and the celery which is optional) and saute briefly.",
        "Add Chicken broth (I often use two cans of both the broth and the clams) potatoes, carrots, reserved clam juice, salt, pepper and simmer until vegetables are done.",
        "Add in the milk, clams and chopped parsley stirring frequently until heated through.",
        "You may wish to serve at this point but we make a roux melting shortening in a heavy pan, adding the flour browning to golden brown and whisking into chowder.",
        "This can be prepared a day ahead, cool, cover and refrigerate bringing to a simmer (carefully stirring to prevent burning) before serving."
      ],
      favourite: false),
  Recipe(
      title: 'Lo Mein Noodles',
      image: 'assets/noodles.jpg',
      description:
          " Lo Mein doesn't judge! This is going to be delish with ANY type of noodles (or pasta trust me, no one will know!).",
      servings: "4",
      mealtype: "dinner",
      duration: '45',
      ingredients: [
        "1.5 tbsp vegetable or peanut oil",
        "2 garlic cloves , finely minced ",
        "1/2 onion , finely sliced",
        "300g / 10oz chicken or other protein , sliced 0.5cm / 1/5 thick ",
        "2 medium carrots , peeled and cut into 4 x 0.75cm / 1.75 x 1/3 batons",
        "1 large red capsicum / bell pepper , sliced (or 2 small)",
        "6 green onions , cut into 5 cm/2” lengths",
        "500g / 1lb Lo Mein, Hokkien or other medium thickness egg noodles, fresh, , prepared per packet ",
        "1/4 cup (65ml) water",
        "4 tsp cornflour / cornstarch",
        "2 tbsp dark soy sauce ",
        "2 tbsp soy sauce or light soy sauce ",
        "1 tbsp Chinese cooking wine or Mirin",
        "1 tsp white sugar (omit if using Mirin)",
        "1/2 tsp sesame oil , toasted, optional ",
        "1/4 tsp white pepper ",
        "green onion (optional), finely sliced"
      ],
      instructions: [
        "Sauce: Mix cornflour and dark soy until lump free, then add remaining Sauce ingredients.",
        "Season Chicken: Transfer 2 tsp Sauce into bowl with chicken. Toss to coat.",
        "Heat oil in a wok or large heavy based skillet over high heat until smoking.",
        "Add onion and garlic, stir 30 seconds.",
        "Add chicken, stir until white on the outside, still raw inside - 1 minute.",
        "Add carrot and capsicum/bell peppers, cook 2 minutes or until chicken is cooked.",
        "Add noodles, Sauce and water. Use 2 wooden spoons and toss for 30 seconds.",
        "Add green onions, toss for another 1 minute until all the noodles are slick with sauce.",
        "Serve immediately, garnished with extra green onions if using."
      ],
      favourite: true),
];
