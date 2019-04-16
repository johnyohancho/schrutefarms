# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all


ansara = User.create(name: "Ansara", age: 24, image_url: "http://static.oprah.com/2016/04/201605-omag-gugu-mbatha-raw-949x534.jpg", points: 1000)
john = User.create(name: "John", age: 24, image_url: "https://upload.wikimedia.org/wikipedia/en/b/b5/Ki-Hong_Lee.jpg", points: 5000, username: "yohan403", password: "123")

beets = Item.create(name: "beetroot", description: "The beetroot is the taproot portion of a beet plant,[1] usually known in North America as the beet, and also known as..JUST BUY IT. IT'S GOOD FOR YOU!", cost: 9999999, image_url: "https://i.ndtvimg.com/i/2018-03/beetroot_650x400_61522137094.jpg", bnb: false)
hemp = Item.create(name: "hemp", description: "Hemp, or industrial hemp (from Old English hænep),[1] typically found in the northern hemisphere, is a strain of the Cannabis sativa plant species that is grown specifically for the industrial uses of its derived products", cost: 55555, image_url: "https://www.healthline.com/hlcmsresource/images/AN_images/evidence-based-health-benefits-hemp-seeds-1296x728-feature.jpg", bnb: false)
package1 = Item.create(name: "Pewter Package", description: "10-12 goats depending on availability", cost: 234987, image_url: "https://gogetnotary.com/wp-content/uploads/2018/07/dwight.jpeg", bnb: true)
package2 = Item.create(name: "Goat Package", description: "most goats", cost: 745987, image_url: "https://gogetnotary.com/wp-content/uploads/2018/07/dwight.jpeg", bnb: true)
