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

# u1 = User.create(name:'Banana phone', password: 'abc123')
# u2 = User.create(name:'Banana split', password: 'abcd1234')

# r1 = Recipe.create(api_id: 1, title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs", image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
#  url: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html")

# c1 = Comment.create(content: "good but needed to add cheese", recipe_id: Recipe.first.id, user_id: User.first.id) 
