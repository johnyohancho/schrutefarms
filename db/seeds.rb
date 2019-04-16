# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ansara = User.create(name: "Ansara", age: 24, image_url: "http://static.oprah.com/2016/04/201605-omag-gugu-mbatha-raw-949x534.jpg", points: 1000)
john = User.create(name: "John", age: 24, image_url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjPhe3S3NLhAhXqmeAKHel9Dd8QjRx6BAgBEAU&url=https%3A%2F%2Fwww.facebook.com%2Fthekihonglee%2F&psig=AOvVaw3nJ9uLaEkBeQvQc12OfIrQ&ust=1555439174765535", points: 5000)
