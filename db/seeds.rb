puts "🌱 Seeding spices..."

aroid = Family.create(name: "Araceae", common_name: "Aroids")
prayer = Family.create(name: "Marantaceae", common_name: "Prayer Plants")
fig = Family.create(name: "Moraceae", common_name: "Mulberry or Fig")
pepper = Family.create(name: "Piperaceae", common_name: "Pepper Family")
dogbane = Family.create(name: "Apocynaceae", common_name: "Dogbane Family")

philodendron = Type.create(name: "Philodendron", family_id: aroid.id)
epipremnum = Type.create(name: "Epipremnum", family_id: aroid.id)
aglaonema = Type.create(name: "Aglaonema", family_id: aroid.id)
alocasia = Type.create(name: "Alocasia", family_id: aroid.id)
calathea = Type.create(name: "Calathea", family_id: prayer.id)
monstera = Type.create(name: "Monstera", family_id: aroid.id)
ficus = Type.create(name: "Ficus", family_id: fig.id)
rhaphidophora = Type.create(name: "Rhaphidophora", family_id: aroid.id)
peperomia = Type.create(name: "Peperomia", family_id: pepper.id)
ceropegia = Type.create(name: "Ceropegia", family_id: dogbane.id)

full_sun = Light.create(name: "Full Sun", amount: 6)
partial_sun = Light.create(name: "Partial Sun", amount: 3)
low_sun = Light.create(name: "Low Light", amount: 0)


damp = Water.create(name: "Damp", amount: 4)
moist = Water.create(name: "Moist", amount: 6)
dry = Water.create(name: "Dry", amount: 8)

user1 = User.create(name: "Alan")

general_purpose_mix = Soil.create(name: "General Purpose Mix", ingredients: ["coco coir", "pumice", "horticultural charcoal", "worm castings"], amounts: [70, 10, 10, 10])
#coco peat 70%, perlite 20%, horticultural charcoal/burned rice hull, worm casting => can plant anything specific:
#syngoniums, caladiums, peace lilys, ficus, pothos, ferns

aroid_mix = Soil.create(name: "Aroid Mix", ingredients: ["coco coir", "orchid bark", "pumice", "horticultural charcoal", "worm castings"], amounts: [50, 20, 10, 10, 10])
#chunky coco husks/orchid bark, pumice, horticultural charcoal, worm casting
#best for climbing plants monsteras, philodendron, pothos, alocasia, hoya, cacti, anthuriums, epipreniums, rhaphidophora

forest_floor_mix = Soil.create(name: "Forest Floor Mix", ingredients: ["dried twigs", "dried leaves", "horticultural charcoal", "vermiculite", "pumice", "worm castings"], amounts: [30, 30, 10, 10, 10, 10])
#dried twigs, dried leaves, horticultural charcoal, vermiculite, pumice, worm castings
#best for calatheas, begonias, aglaonema, marantas, diffenbachia, alocasia
#water very often

cacti_succulent_mix = Soil.create(name: "Cacti Succulent Mix", ingredients: ["acadama", "perlite", "vermiculite", "horticultural charcoal", "sand", "worm casting"], amounts: [60, 10, 10, 10, 5, 5])
#perlite, vermiculite, horticultural charcoal, acadama, sand, worm casting
#cacti, succulents, zz plants, sanseviera, bonsai


deliciosa = Plant.create(name: "Deliciosa", common_name: "Swiss Cheese Plant", image_url: "https://i.imgur.com/wgoF1Hl.jpg", family_id: monstera.family_id, type_id: monstera.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
siltepecana = Plant.create(name: "Siltepecana", common_name: "Siltepecana", image_url: "https://i.imgur.com/cqUxqMD.jpg", family_id: monstera.family_id, type_id: monstera.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
fiddle_leaf_fig = Plant.create(name: "Lyrata", common_name: "Fiddle-Leaf Fig", image_url: "https://i.imgur.com/FOMmMmD.jpg", family_id: ficus.family_id, type_id: ficus.id, light_id: full_sun.id, water_id: dry.id, soil_id: general_purpose_mix.id)
rubber_tree = Plant.create(name: "Elastica Burgundy", common_name: "Rubber Tree", image_url: "https://i.imgur.com/QfGOMPG.jpg", family_id: ficus.family_id, type_id: ficus.id, light_id: full_sun.id, water_id: dry.id, soil_id: general_purpose_mix.id)
rubber_tree_ruby = Plant.create(name: "Elastica Ruby", common_name: "Rubber Tree Ruby", image_url: "https://i.imgur.com/VPuC8av.jpg", family_id: ficus.family_id, type_id: ficus.id, light_id: full_sun.id, water_id: dry.id, soil_id: general_purpose_mix.id)
golden_pothos = Plant.create(name: "Aureum", common_name: "Golden Pothos", image_url: "https://i.imgur.com/V0kZvLq.jpg", family_id: epipremnum.family_id, type_id: epipremnum.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
marble_queen_pothos = Plant.create(name: "Aureum", common_name: "Marble Queen Pothos", image_url: "https://i.imgur.com/XIMX4kv.jpg", family_id: epipremnum.family_id, type_id: epipremnum.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
cebu_blue = Plant.create(name: "Pinnatum", common_name: "Cebu Blue", image_url: "https://i.imgur.com/RbbL8pm.jpg", family_id: epipremnum.family_id, type_id: epipremnum.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
njoy_pothos = Plant.create(name: "Aureum", common_name: "N'Joy Pothos", image_url: "https://i.imgur.com/86p59WX.jpg", family_id: epipremnum.family_id, type_id: epipremnum.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
neon_pothos = Plant.create(name: "Aureum", common_name: "Neon Pothos", image_url: "https://i.imgur.com/ghAlklu.jpg", family_id: epipremnum.family_id, type_id: epipremnum.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
pinstripe = Plant.create(name: "Ornata", common_name: "Pinstripe Calathea", image_url: "https://i.imgur.com/rgcVotO.jpg", family_id: calathea.family_id, type_id: calathea.id, light_id: low_sun.id, water_id: damp.id, soil_id: forest_floor_mix.id)
peacock = Plant.create(name: "Makoyana", common_name: "Peacock Plant", image_url: "https://i.imgur.com/QpGzC59.jpg", family_id: calathea.family_id, type_id: calathea.id, light_id: low_sun.id, water_id: damp.id, soil_id: forest_floor_mix.id)
medallion = Plant.create(name: "Roseopicta Medallion", common_name: "Medallion", image_url: "https://i.imgur.com/8hehLtl.jpg", family_id: calathea.family_id, type_id: calathea.id, light_id: low_sun.id, water_id: damp.id, soil_id: forest_floor_mix.id)
dottie = Plant.create(name: "Roseopicta Dottie", common_name: "Dottie", image_url: "https://i.imgur.com/eGTAZjO.jpg", family_id: calathea.family_id, type_id: calathea.id, light_id: low_sun.id, water_id: damp.id, soil_id: forest_floor_mix.id)
dragon_scale = Plant.create(name: "Baginda", common_name: "Dragon Scale", image_url: "https://i.imgur.com/V8beAmY.jpg", family_id: alocasia.family_id, type_id: alocasia.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
silver_dragon = Plant.create(name: "Baginda", common_name: "Silver Dragon", image_url: "https://i.imgur.com/KREY40w.jpg", family_id: alocasia.family_id, type_id: alocasia.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
black_velvet = Plant.create(name: "Reginula", common_name: "Black Velvet", image_url: "https://i.imgur.com/Z7BLiDZ.jpg", family_id: alocasia.family_id, type_id: alocasia.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
polly = Plant.create(name: "Amazonica Polly", common_name: "Amazonian Elephant's Ear", image_url: "https://i.imgur.com/ZpTDj7O.jpg", family_id: alocasia.family_id, type_id: alocasia.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)
string_of_turtles = Plant.create(name: "Prostrata", common_name: "String of Turtles", image_url: "https://i.imgur.com/dWR62nS.jpg", family_id: peperomia.family_id, type_id: peperomia.id, light_id: partial_sun.id, water_id: moist.id, soil_id: cacti_succulent_mix.id)
raindrop = Plant.create(name: "Polybotrya", common_name: "Raindrop", image_url: "https://i.imgur.com/HXE3M62.jpg", family_id: peperomia.family_id, type_id: peperomia.id, light_id: partial_sun.id, water_id: moist.id, soil_id: cacti_succulent_mix.id)
string_of_hearts = Plant.create(name: "Woodii", common_name: "String of Hearts", image_url: "https://i.imgur.com/wohatRR.jpg", family_id: ceropegia.family_id, type_id: ceropegia.id, light_id: full_sun.id, water_id: dry.id, soil_id: cacti_succulent_mix.id)
tetrasperma = Plant.create(name: "Tetrasperma", common_name: "Mini Monstera", image_url: "https://i.imgur.com/ZTAZGIB.jpg", family_id: rhaphidophora.family_id, type_id: rhaphidophora.id, light_id: partial_sun.id, water_id: dry.id, soil_id: aroid_mix.id)

Journal.create(title: "Plan to Mature Leaves of Cebu Blue", content: "My plan to get mature leaves is to put the baby plant on a stake. I will use very chunky soil with more orchid bark and less coco coir. This will promote the roots to latch on to the bark and grow thicker. I will also change water regimen to fully soak the plant every 7 days.", user_id: 1, plant_id: cebu_blue.id)
Journal.create(title: "Plan to Keep Calathea Ornata Alive through Winter", content: "My plan to keep my Pinstripe plant alive is to keep the soil consistently moist. I will also mist the plants every day with filtered water.", user_id: 1, plant_id: pinstripe.id)
Journal.create(title: "Plan to Keep Calathea Ornata Alive through Winter", content: "In order to propagate my string of hearts, I will try to do the butterfly method. I will cut the stem between nodes and place on top of moist soil.", user_id: 1, plant_id: string_of_hearts.id)

puts "✅ Done seeding!"
