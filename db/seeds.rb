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


r1 = Recipe.create(api_id: 654883, title: "Pasta Vegetable Soup", image: "https://spoonacular.com/recipeImages/654883-312x231.jpg",
url: "http://www.foodista.com/recipe/FR8FKR4F/pasta-vegetable-soup")

f1 = Favorite.create(recipe_id: r1.id, user_id: u1.id)
# f2 = Favorite.create(recipe_id: r1.id, user_id: u2.id)

c1 = Comment.create(content: "good but needed to add cheese", favorite_id: f1.id, user_id: u1.id) 