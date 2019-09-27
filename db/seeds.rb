Plant.destroy_all
Accessory.destroy_all
Product.destroy_all

User.destroy_all

user = User.create(
  name: "izzy", email: "izzy@email.com", password: "password", admin: true
)

Cart.create(
  user_id: user.id
)

Plant.create([
  {name: "Peppermint", size: 1,light: 2, maintenance: 1, category: 0, description: "Peppermint (Mentha piperita ) is an aromatic perennial plant that grows to a height of about 3 ft (1 m). It has light purple flowers and green leaves with serrated edges. Peppermint belongs to the Lamiaceae family and grows throughout North America, Asia, and Europe. There are more than 25 species of true mint grown throughout the world.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Peppermint-300.jpg"},
  {name: "Rubber Plant", size: 2,light: 2, maintenance: 2, category: 1, description: "Rubber tree plants are a fast-growing species of broadleaf evergreen tree called Ficus elastica. They are native to the rainforest region of South America as well as the tropical rainforests of Sumatra, the Himalayas, India, Nepal and Java, a large and densely populated Indonesian island.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Rubber_Plant-300.jpg"},
  {name: "Basil", size: 1,light: 2, maintenance: 1, category: 0, description: "Basil, (Ocimum basilicum), also called sweet basil, annual herb of the mint family (Lamiaceae), grown for its aromatic leaves. Basil is likely native to India and is widely grown as a kitchen herb. The leaves are used fresh or dried to flavour meats, fish, salads, and sauces; basil tea is a stimulant.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Basil-300.jpg"},
  {name: "ZZ Plant", size: 2,light: 2, maintenance: 1, category: 1, description: "The ZZ plant bears an uncanny resemblance to an olive branch but more succulent and with a glossy, almost wax-like finish. Believe it or not, it’s actually a flowering plant. Although extremely rare for those grown indoors, ZZ plants can produce little white, spathe-type flowers near the base of its stalk, which is almost identical to the flowers of a peace lily.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/ZZ_Plant-300.jpg"},
  {name: "Snake Plant", size: 2,light: 1, maintenance: 1, category: 1, description: "This plant is extremely drought-tolerant, but its Achilles' heel is too much water. Plant sansevieria in a well-drained pot with a potting mix that doesn't hold a lot of water. Fertilize periodically—even just a dose of slow-release fertilizer will do the job. Be careful not to over-fertilize as too much can cause a snake plant to put on soft, floppy growth.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Snake_Plant-300.jpg"},
  {name: "Aloe Vera", size: 1,light: 2, maintenance: 1, category: 0, description: "This striking plant is native to tropical and semi-tropical regions of Africa and the Mediterranean. Aloe has been used for centuries, and mentioned by Dioscorides (one of the fathers of herbal medicine) in 78 AD and mentioned in medicinal books dating back to the 10 th century in Europe. Aloe, native to Africa, found its way to the west via trade routes from Egypt and Africa. It was successfully introduced to the West Indies in the 17th century.", url: "http://tinygarden-bucket.herokuapp.com/images/aloe.png"},
  {name: "Rosemary", size: 1,light: 2, maintenance: 1, category: 0, description: "Rosemary's name is rooted in legend. The story goes that during her flight from Egypt, the Virgin Mary draped her blue cloak on a Rosemary bush. She then laid a white flower on top of the cloak. That night, the flower turned blue and the bush was thereafter known as the 'rose of Mary'. Greeks, who wove Rosemary wreaths into their hair, believed Rosemary strengthened the brain and enhanced memory.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Rosemary-300.jpg"},
  {name: "Calathea", size: 2,light: 1, maintenance: 2, category: 1, description: "With good humidity, consistent soil moisture, warm air temperatures, and an absence of direct sun, this tropical perennial will usually develop into an extremely attractive indoor foliage plant. Best indoor container growth typically occurs in uniformly moist, well-drained, peaty potting mixtures in room temperatures ranging from 65 to 75 degrees F. in bright shade locations.1", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Calathea-300.jpg"},
  {name: "Pothos", size: 2,light: 2, maintenance: 2, category: 1, description: "Pothos is an evergreen plant with thick, waxy, green, heart-shaped leaves with splashes of yellow. As a houseplant, it is commonly grown as a hanging plant. Pothos can climb by means of aerial roots, and wild or cultivated plants grown outdoors can reach enormous heights using tall trees as support. ", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Pothos-300.jpg"},
  {name: "Monstera", size: 2,light: 1, maintenance: 1, category: 1, description: "Monstera deliciosa, commonly called split-leaf philodendron, is native to Central America. It is a climbing, evergreen perennial vine that is perhaps most noted for its large perforated leaves on thick plant stems and its long cord-like aerial roots. In its native tropical habitat, it will climb somewhat impressively to 70’ into large trees, clothing the trunks with leaves in the 1-3’ long range. Indoor plants more typically are grown in the 6-8’ range.", url: "http://tinygarden-bucket.herokuapp.com/images/Plants/Monstera-300.jpg"},
])

Product.create([
  {sku: "pep1", price: 500, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Peppermint').id, amount: rand(25) },
  {sku: "rub2", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Rubber Plant').id, amount: rand(25) },
  {sku: "bas3", price: 500, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Basil').id, amount: rand(25) },
  {sku: "zzp4", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'ZZ Plant').id, amount: rand(25) },
  {sku: "sna5", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Snake Plant').id, amount: rand(25) },
  {sku: "alo6", price: 500, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Aloe Vera').id, amount: rand(25) },
  {sku: "ros7", price: 500, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Rosemary').id, amount: rand(25) },
  {sku: "cal8", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Calathea').id , amount: rand(25)},
  {sku: "pot9", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Pothos').id, amount: rand(25) },
  {sku: "mon10", price: 1000, sellable_type: "Plant", sellable_id: Plant.find_by(name: 'Monstera').id, amount: rand(25) }
])

Product.all.sample(20).each{ |p| CartProduct.create( cart_id: user.cart.id, product_id: p.id , amount: rand(25) )}

Accessory.create([
  {name: 'Pot', description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.", variant: [0,1,2].sample, url: "http://tinygarden-bucket.herokuapp.com/images/Accessories/table.png" },
  {name: 'Table', description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.", variant: [0,1,2].sample, url: "http://tinygarden-bucket.herokuapp.com/images/Accessories/tall-table.png" },
  {name: 'Hanging thing', description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.", variant: [0,1,2].sample, url: "http://tinygarden-bucket.herokuapp.com/images/Accessories/hanging-pot.png" },
  {name: 'Shelf', description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.", variant: [0,1,2].sample, url: "http://tinygarden-bucket.herokuapp.com/images/Accessories/shelf.png" }
])

Product.create([
  {sku: "pot1", price: 4000, sellable_type: "Accessory", sellable_id: Accessory.find_by(name: 'Pot').id, amount: rand(25) },
  {sku: "shelf1", price: 4000, sellable_type: "Accessory", sellable_id: Accessory.find_by(name: 'Shelf').id, amount: rand(25) },
  {sku: "tab2", price: 10000, sellable_type: "Accessory", sellable_id: Accessory.find_by(name: 'Table').id, amount: rand(25) },
  {sku: "thingy42", price: 3400, sellable_type: "Accessory", sellable_id: Accessory.find_by(name: 'Hanging thing').id, amount: rand(25) }
])
