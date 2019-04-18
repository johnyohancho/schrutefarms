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

beets = Item.create(name: "Beetroot", description: "The taproot portion of a beet plant, usually known to simpletons as the beet, and also known as..JUST BUY IT. IT'S GOOD FOR YOU!", cost: 12.00, image_url: "https://www.deliaonline.com/sites/default/files/styles/square/public/quick_media/ingredient-htc-beetroot.jpg?itok=ZAv9ju_q&c=e6f33693677dedec142d404e0a9830cc", bnb: false)
hemp_seeds = Item.create(name: "Hemp Seeds", description: "Superfood. A strain of the Cannabis sativa plant species that is grown specifically for the industrial uses of its derived products.", cost: 10.00, image_url: "https://www.thespruceeats.com/thmb/z37SnkEXIBwmYlRG2ZQ25W_ydzY=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/raw-organic-hemp-seeds-908069724-5ac43a87ff1b780037c2cbcf.jpg", bnb: false)
tshirt = Item.create(name: "Schrute Farms tshirt", description: "Schrute Farms screen printed shirt. Comes in beet red. Unisex. One size fits all. FALSE: ALL SIZES FIT ALL.", cost: 25.00, image_url: "https://i.etsystatic.com/16765902/r/il/20572a/1456062952/il_570xN.1456062952_xvym.jpg", bnb: false)
hoodie = Item.create(name: "Schrute Farms Hoodie", description: "Schrute Farms screen printed hoodie. Comes in beet red. Unisex. One size fits all. FALSE: ALL SIZES FIT ALL.", cost: 45.00, image_url: "https://i.etsystatic.com/14651231/r/il/c0848c/1396344202/il_570xN.1396344202_gm10.jpg", bnb: false)
goat_butter = Item.create(name: "Goat Butter", description: "Grade A goat butter. Excellent on toast!", cost: 10, image_url: "https://cdn2.stylecraze.com/wp-content/uploads/2015/04/2087-10-Amazing-Benefits-Of-Goat-Butter-SS.jpg", bnb: false)
cow_butter = Item.create(name: "Cow Butter", description: "Grade A cow butter. Excellent on toast!", cost: 8, image_url: "https://imgusr.tradekey.com/p-8717703-20140613084751/grade-a-cow-butter-ghee-anhydrous-milk-fat-99-8-anhydrous-butter-oil-for-sale.jpg", bnb: false)
sheep_butter = Item.create(name: "Sheep Butter", description: "Grade A sheep butter. Excellent on toast!", cost: 10, image_url: "https://iv1.lisimg.com/image/8843150/640full.jpg", bnb: false)
beet_wine = Item.create(name: "Beet Wine", description: "Excellent source of fiber. Great for diabetics.", cost: 23, image_url: "https://farm5.staticflickr.com/4019/4500526206_d129562c01.jpg", bnb: false)
pickled_beets = Item.create(name: "Pickled Beets", description: "Lowers blood pressure.", cost: 23, image_url: "https://media1.popsugar-assets.com/files/thumbor/OQ8pCoGYZHeT198s1AQGb6C5tCI/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2010/03/13/3/192/1922794/23/i/Home-Away-From-Home-Schrute-Farms.jpg", bnb: false)


america = Item.create(name: "America", description: "Twin bed. Outhouse.", cost: 200, image_url: "https://i.redd.it/idqz97bq8af01.jpg", bnb: true)
irrigation = Item.create(name: "Irrigation", description: "Twin bed. Outhouse.", cost: 200, image_url: "https://i2.kym-cdn.com/entries/icons/original/000/002/314/schrutefarms.jpg", bnb: true)
night_time = Item.create(name: "Night-Time", description: "Twin bed. Outhouse.", cost: 200, image_url: "https://i.redd.it/hqr6wk5w5qzy.jpg", bnb: true)
