# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ansara = User.create(name: "Ansara", age: 24, image_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiy78743NLhAhVqZN8KHaDxD94QjRx6BAgBEAU&url=http%3A%2F%2Fwww.oprah.com%2Finspiration%2F5-things-you-didnt-know-about-gugu-mbatha-raw&psig=AOvVaw08GCvWYnY87RpiAZzw6913&ust=1555439260614702", points: 1000)
john = User.create(name: "John", age: 24, image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjPhe3S3NLhAhXqmeAKHel9Dd8QjRx6BAgBEAU&url=https%3A%2F%2Fwww.facebook.com%2Fthekihonglee%2F&psig=AOvVaw3nJ9uLaEkBeQvQc12OfIrQ&ust=1555439174765535", points: 5000)
