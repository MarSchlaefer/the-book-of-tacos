puts "SEEDING TACOS"
r1 = Recipe.create(title: 'Black Bean Potato Onion Tacos')
r1.update(description: "1. Heat two tablespoons vegetable oil in large skillet over medium heat.\n
2. Once olive oil begins to shimmer, add onions.\n
3. When onions start becoming translucent, turn the heat down a tiny bit and saute them until they turn very slightly brown on the edges.\n
4. Add the peeled and sliced potato rounds and saute them along with the onions until the potatoes are fork-tender.\n
5. Add the garlic black beans and simmer until any bean broth is incorporated into the potato/onion mix.\n
6. Let cool a little bit before serving, potatoes retain heat really really well.")
r2 = Recipe.create(title: 'Thanksgiving Tacos')
r2.update(description: "1. Give yourself plenty of time here, the Smokey Turkey recipe takes a while. Frankly, it ain't Thanksgiving if you're not spending most of your day in the kitchen getting this shit together.\n
2. The Cranberry Salsa is best assembled pretty close to eating. You can make the cranberries well ahead of time, but the longer this thing sits, the more it just tastes like cranberry sauce.\n
3. You can probably cut the size of the Salsa de Aguacate recipe by a third--the recipe makes a lot (then again, just means you've got toppings for another taco later in the week).\n
4. If you really want to make the day extra-special, make your own Fresh Corn Tortillas\n
5. THANKSGIVING POWER ACTIVATE")
r3 = Recipe.create(title: 'Tempeh reuben tacos')
r3.update(description: "1. Prepare the Pepper Tempeh filling\n
2. Serve in a corn tortilla.\n
3. Top with sauerkraut. Homemade sauerkraut is particularly delicious and I found this recipe relatively easy to follow.\n4.
4. Sprinkle with carroway seeds.\n
5. Optionally, top with swiss cheese. For vegans, I've found sliced avocado to be a nice creamy substitute.\n
6. Top with a spicy mustard.")
r4 = Recipe.create(title: 'Vegan Red Cabbage Tacos')
r4.update(description: "1. Prepare Red Cabbage Filling\n
2. Prepare Garlic Black Beans\n
3. Serve in toasted corn tortillas, topped with optional veggies and a squeeze of lime.")
r5 = Recipe.create(title: 'Baja Fish Tacos')
r5.update(description: "1. Steam a tortilla\n
2. Spread white sauce all over it\n
3. Add some fish\n
4. Add cabbage, cilantro, and a squeeze of lime")
r6 = Recipe.create(title: 'Moroccan Lamb Tacos')
r6.update(description: "Your description is in another taco...")
r7 = Recipe.create(title: 'Chorizo Sweet Potato Apple Tacos')
r7.update(description: "This is not the taco ingredients you are searching for...")
r8 = Recipe.create(title: 'Cauliflower Tacos')
r8.update(description: "Where is the description?")
r9 = Recipe.create(title: 'Pork Chard Onion Tacos')
r9.update(description: "4 in a row now...")
r10 = Recipe.create(title: 'Traditional American Tacos')
r10.update(description: "1. Cook the ground beef; heat the shells; chop the tomatoes; shred the cheese and lettuce. Stick a spoon in the salsa.\n
2. Once everything's on the table, anything goes. Tradition holds that the meat goes first and the cheese goes on the meat (so as to promote melting).")
r11 = Recipe.create(title: 'Slow Cooker Chicken de Arbol Tacos')
r11.update(description: "404 Description not found")
r12 = Recipe.create(title: 'Asian Style Tacos')
r12.update(description: "1. Using the asian marinade, prepare some tofu or sliced pork\n
2. Make some guacamole (add in a teaspoon of sesame oil and toasted sesame seeds to your recipe)\n
3. Top with asian pickled veggies\n
4. And cabbage slaw")
r13 = Recipe.create(title: 'Fish Tacos')
r13.update(description: "Wht won't anyone give me a desceription? PepeHands")
r14 = Recipe.create(title: 'Swiss Chard Tacos')
r14.update(description: "Okay I'm just going to add my own descriptions now.")
r15 = Recipe.create(title: 'Zucchini Corn Tacos')
r15.update(description: "1. Prepare the Zucchini & Corn Filling\n
2. Add optional salsa (tomatillo is best, like the Simple Salsa Verde)\n
3. Serve in corn tortillas, topped with optional cheese (queso fresco if possible)")
r16 = Recipe.create(title: 'Tacos de Carnitas')
r16.update(description: "1. Smear tortilla with crema and then salsa.\n
2. Tong 1-2 oz of fat-poached carnitas and spread it out.\n
3. Top carnitas with charred corn and onions and cilantro.\n
4. Sprinkle with cotija.\n
5. Nestle chicharrone on the top like a shark fin.\n
6. Sprinkle with hot sauce and chili powder.\n
7. Consume immediately.")
r17 = Recipe.create(title: 'Spaghetti Squash Tacos')
r17.update(description: "Bake the spaghetti squash and scoop it into strands. While the squash is baking, prepare the tomato sauce. Toss the squash with the sauce and spoon onto tortillas, or more authentically, taco shells. Use scissors to snip thin strips of fresh basil on top of the tacos and sprinkle withe the cheese.")

i1 = Ingredient.create(name: 'garlic')
i2 = Ingredient.create(name: 'black beans')
i3 = Ingredient.create(name: 'salsa de aguacate')
i4 = Ingredient.create(name: 'turkey')
i5 = Ingredient.create(name: 'pepper tempeh')
i6 = Ingredient.create(name: 'steak')
i7 = Ingredient.create(name: 'Moroccan lamb')
i8 = Ingredient.create(name: 'chipotle sauce')
i9 = Ingredient.create(name: 'chorizo')
i10 = Ingredient.create(name: 'onion')
i11 = Ingredient.create(name: 'corn')
i12 = Ingredient.create(name: 'squash')
i13 = Ingredient.create(name: 'chicken')
i14 = Ingredient.create(name: 'cabbage')
i15 = Ingredient.create(name: 'tofu')
i16 = Ingredient.create(name: 'pork')
i17 = Ingredient.create(name: 'tilapia')
i18 = Ingredient.create(name: 'swiss chard')
i19 = Ingredient.create(name: 'zucchini')
i20 = Ingredient.create(name: 'apple')
i21 = Ingredient.create(name: 'black olives')
i22 = Ingredient.create(name: 'ground beef')
i23 = Ingredient.create(name: 'cilantro')
i24 = Ingredient.create(name: 'carnitas')
i25 = Ingredient.create(name: 'tomato sauce')
i26 = Ingredient.create(name: 'white fish')
i27 = Ingredient.create(name: 'sweet potato')

RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i4.id)
RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i5.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i14.id)
RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i14.id)
RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i23.id)
RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i26.id)
RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i7.id)
RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i10.id)
RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i21.id)
RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i20.id)
RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i27.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i11.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i13.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i16.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i18.id)
RecipeIngredient.create(recipe_id: r10.id, ingredient_id: i21.id)
RecipeIngredient.create(recipe_id: r10.id, ingredient_id: i22.id)
RecipeIngredient.create(recipe_id: r11.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r11.id, ingredient_id: i13.id)
RecipeIngredient.create(recipe_id: r12.id, ingredient_id: i14.id)
RecipeIngredient.create(recipe_id: r12.id, ingredient_id: i15.id)
RecipeIngredient.create(recipe_id: r12.id, ingredient_id: i16.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i8.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i17.id)
RecipeIngredient.create(recipe_id: r14.id, ingredient_id: i10.id)
RecipeIngredient.create(recipe_id: r14.id, ingredient_id: i18.id)
RecipeIngredient.create(recipe_id: r15.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r15.id, ingredient_id: i11.id)
RecipeIngredient.create(recipe_id: r15.id, ingredient_id: i19.id)
RecipeIngredient.create(recipe_id: r16.id, ingredient_id: i10.id)
RecipeIngredient.create(recipe_id: r16.id, ingredient_id: i23.id)
RecipeIngredient.create(recipe_id: r16.id, ingredient_id: i24.id)
RecipeIngredient.create(recipe_id: r17.id, ingredient_id: i12.id)
RecipeIngredient.create(recipe_id: r17.id, ingredient_id: i25.id)

p1 = Post.create(title: "Peter Post1", content: "BIRD IS THE WORD!", user_id: 1, recipe_id: r1.id)
p2 = Post.create(title: "Peter Post2", content: "BIRD IS THE WORD! X2", user_id: 1, recipe_id: r2.id)
p3 = Post.create(title: "Quagmire Post 1", content: "BIRD IS NOT THE WORD YOU IDIOT", user_id: 2, recipe_id: r3.id)
p4 = Post.create(title: "Joe Post 1", content: "This taco makes me feel I can walk again!", user_id: 3, recipe_id: r4.id)

# c1 = Comment.create(content: "NO ITS NOT", post_id: p1.id, )

puts "TACOS SEEDED"
