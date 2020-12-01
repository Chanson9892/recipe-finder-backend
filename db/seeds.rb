# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Comment.destroy_all
Recipe.destroy_all
Favorite.destroy_all

u1 = User.create(username:'abc123', password: 'abc123')
u2 = User.create(username:'abcd123', password: 'abcd123')


r1 = Recipe.create(api_id: 654959, title: "Pasta with Tuna", image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
url: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html")

# c1 = Comment.create(content: "good but needed to add cheese", recipe_id: Recipe.first.id, user_id: User.first.id) 
f1 = Favorite.create(recipe_id: r1.id, user_id: u1.id)
# f2 = Favorite.create(recipe_id: r1.id, user_id: u2.id)