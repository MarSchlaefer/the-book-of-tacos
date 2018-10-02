puts "SEEDING TACOS"


r1 = Recipe.create(title: 'Black Bean Potato Onion Tacos')
i1 = Ingredient.create(name: 'Garlic black beans')
RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i1.id)

r2 = Recipe.create(title: 'Thanksgiving Tacos')
i2 = Ingredient.create(name: 'Salsa de aguacate')
i3 = Ingredient.create(name: 'Smokey turkey tacos')
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i3.id)


r3 = Recipe.create(title: 'Tempeh reuben tacos ')
i4 = Ingredient.create(name: 'Pepper tempeh')
RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i4.id)


r4 = Recipe.create(title: 'Vegan Red Cabbage Tacos')
i5 = Ingredient.create(name: 'Garlic black beans')
RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i5.id)

r5 = Recipe.create(title: 'Steak Sweet Potato Apple Tacos')
i6 = Ingredient.create(name: 'Chopped steak')
RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i6.id)

r6 = Recipe.create(title: 'Morrocan Lamb Tacos')
i7 = Ingredient.create(name: 'Moroccan lamb')
RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i7.id)

r7 = Recipe.create(title: 'Chorizo Sweet Potato Apple Tacos')
i8 = Ingredient.create(name: 'Chipotle sauce')
i9 = Ingredient.create(name: 'Chorizo')
RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i8.id)
RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i9.id)

r8 = Recipe.create(title: 'Chicken Verde Corn Black Bean Tacos')
i10 = Ingredient.create(name: 'Salsa de aguacate')
i11 = Ingredient.create(name: 'Corn and black beans')
i12 = Ingredient.create(name: 'Slow cooked salsa verde chicken')
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i10.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i11.id)
RecipeIngredient.create(recipe_id: r8.id, ingredient_id: i12.id)

r9 = Recipe.create(title: 'Pork Chard Onion Tacos')
i13 = Ingredient.create(name: 'Pickled red onions')
i14 = Ingredient.create(name: 'Swiss chard')
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i13.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i14.id)

r10 = Recipe.create(title: 'Traditional American Tacos')
i15 = Ingredient.create(name: 'Hard corn shells')
i16 = Ingredient.create(name: 'Black olives')
i17 = Ingredient.create(name: 'Ground beef')
RecipeIngredient.create(recipe_id: r10.id, ingredient_id: i15.id)
RecipeIngredient.create(recipe_id: r10.id, ingredient_id: i16.id)
RecipeIngredient.create(recipe_id: r10.id, ingredient_id: i17.id)

r11 = Recipe.create(title: 'Slow Cooker Chicken de Arbol Tacos')
i18 = Ingredient.create(name: 'Salsa de aguacate')
i19 = Ingredient.create(name: 'Slow cooked salsa verde chicken')
RecipeIngredient.create(recipe_id: r11.id, ingredient_id: i18.id)
RecipeIngredient.create(recipe_id: r11.id, ingredient_id: i19.id)

r12 = Recipe.create(title: 'Asian Style Tacos')
i20 = Ingredient.create(name: 'Asian cabbage slaw')
i21 = Ingredient.create(name: 'Asian style tofu or pork marinade')
RecipeIngredient.create(recipe_id: r12.id, ingredient_id: i20.id)
RecipeIngredient.create(recipe_id: r12.id, ingredient_id: i21.id)

r13 = Recipe.create(title: 'Fish Tacos')
i22 = Ingredient.create(name: 'Chipotle sauce')
i23 = Ingredient.create(name: 'Baked tilapia')
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i22.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i23.id)

r14 = Recipe.create(title: 'Swiss Chard Tacos')
i24 = Ingredient.create(name: 'Swiss chard')
RecipeIngredient.create(recipe_id: r14.id, ingredient_id: i24.id)

r15 = Recipe.create(title: 'Zucchini Corn Tacos')
i25 = Ingredient.create(name: 'Simple salsa verde')
i26 = Ingredient.create(name: 'Zucchini and corn filling')
RecipeIngredient.create(recipe_id: r15.id, ingredient_id: i25.id)
RecipeIngredient.create(recipe_id: r15.id, ingredient_id: i26.id)

r16 = Recipe.create(title: 'Tacos de Carnitas')
i27 = Ingredient.create(name: 'Onions and cilantro')
i28 = Ingredient.create(name: 'Fat poached carnitas')
RecipeIngredient.create(recipe_id: r16.id, ingredient_id: i27.id)
RecipeIngredient.create(recipe_id: r16.id, ingredient_id: i28.id)

r17 = Recipe.create(title: 'Spaghetti Squash Tacos')
i29 = Ingredient.create(name: 'Above average tomato sauce')
i30 = Ingredient.create(name: 'Spaghetti squash')
RecipeIngredient.create(recipe_id: r17.id, ingredient_id: i29.id)
RecipeIngredient.create(recipe_id: r17.id, ingredient_id: i30.id)



puts "TACOS SEEDED"

puts "SEEDING USERS"
User.create(name: "michael bluth")
User.create(name: "GOB")
User.create(name: "lucille bluth")
User.create(name: "oscar bluth")
User.create(name: "lindsay bluth")
User.create(name: "buster bluth")
puts "USERS SEEDED"
