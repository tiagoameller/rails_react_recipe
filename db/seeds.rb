9.times do |i|
  Recipe.create(
    name: "Recipe #{i + 1}",
    ingredients: '227g tub clotted cream, 25g butter, 1 tsp cornflour,100g parmesan, grated nutmeg, 250g fresh fettuccine or tagliatelle, snipped chives or chopped parsley to serve (optional)',
    instruction: 'In a medium saucepan, stir the clotted cream, butter, and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.'
  )
end

# Recipe.create!([
#   { name: 'Recipe AAA', ingredients: 'ingredients AAA', instruction: 'instruction AAA' },
#   { name: 'Recipe BBB', ingredients: 'ingredients BBB', instruction: 'instruction BBB' },
#   { name: 'Recipe CCC', ingredients: 'ingredients CCC', instruction: 'instruction CCC' },
#   { name: 'Recipe DDD', ingredients: 'ingredients DDD', instruction: 'instruction DDD' },
#   { name: 'Recipe EEE', ingredients: 'ingredients EEE', instruction: 'instruction EEE' },
#   { name: 'Recipe FFF', ingredients: 'ingredients FFF', instruction: 'instruction FFF' },
#   { name: 'Recipe JJJ', ingredients: 'ingredients JJJ', instruction: 'instruction JJJ' }
# ])