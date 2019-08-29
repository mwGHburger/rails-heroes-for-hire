# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Superhero.destroy_all
# User.destroy_all

# puts 'Assembling users...'

# users_attributes = [
#   {
#     name:         'Bruce',
#     email:        '3000@love.com',
#     password:     123456
#   },
#   {
#     name:         'Thane',
#     email:        'click@power.com',
#     password:     123456
#   }
# ]

# User.create!(users_attributes)
# puts "Finished creating #{users_attributes.length} users!"

# puts 'Assembling superheroes...'


superheroes_attributes = [
  {
    name:         'Batman',
    price:        1000,
    description:  'In the name of his murdered parents, Bruce Wayne wages eternal war on the criminals of Gotham City. He is vengeance. He is the night. He is Batman.',
    location:     'Gotham',
    user_id:      User.first.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/18395.jpg"
  },
  {
    name:         'Superman',
    price:        9000,
    description:  'Faster than a speeding bullet, more powerful than a locomotive… The Man of Steel fights a never-ending battle for truth, justice, and the American way.',
    location:     'Manhattan',
    user_id:      User.first.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/15372.png"
  },
  {
    name:         'Ironman',
    price:        3000,
    description:  "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man.",
    location:     'California',
    user_id:      User.last.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/15897.png"
  },
  {
    name:         'Captain America',
    price:        1000000,
    description:  'Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers.',
    location:     'Canada',
    user_id:      User.first.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/13244.jpg"
  },
  {
    name:         'Hulk',
    price:        10,
    description:  'Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.',
    location:     'New York',
    user_id:      User.last.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/13238.jpg"
  },
  {
    name:         'Wonder Woman',
    price:        2000,
    description:  "Beautiful as Aphrodite, wise as Athena, swifter than Hermes, and stronger than Hercules, Princess Diana of Themyscira fights for peace in Man's World.",
    location:     "Madagascar",
    user_id:      User.first.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/9523.jpg"
  },
  {
    name:         'Saitama',
    price:        2000,
    description:  'Described as a "hero-for fun" - Saitama trained himself so hard that he unintentionally broke the natural limiter that prevents living beings from going beyond superhuman condition, Saitama faces an existential crisis as he is now too powerful to gain any thrill from his heroics.',
    location:     "Madagascar",
    user_id:      User.first.id,
    remote_photo_url:        "https://wallpapersite.com/images/pages/pic_h/2376.jpg"
  }
]

# Superhero.create!(superheroes_attributes)
# puts "Finished creating #{superheroes_attributes.length} superheroes!"
