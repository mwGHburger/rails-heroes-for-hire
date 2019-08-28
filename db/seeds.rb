# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Superhero.destroy_all
User.destroy_all

puts 'Assembling users...'

users_attributes = [
  {
    name:         'Bruce',
    email:        '3000@love.com',
    password:     123456
  },
  {
    name:         'Thane',
    email:        'click@power.com',
    password:     123456
  }
]

User.create!(users_attributes)
puts "Finished creating #{users_attributes.length} users!"

puts 'Assembling superheroes...'

superheroes_attributes = [
  {
    name:         'Batman',
    price:        1000,
    description:  'I am Batman.',
    location:     'Gotham',
    user_id:      User.first.id
  },
  {
    name:         'Superman',
    price:        9000,
    description:  'I like spandex.',
    location:     'Manhattan',
    user_id:      User.first.id
  },
  {
    name:         'Ironman',
    price:        3000,
    description:  'I am Ironman.',
    location:     'California',
    user_id:      User.last.id
  },
  {
    name:         'Captain America',
    price:        1000000,
    description:  'I love you 3000.',
    location:     'Canada',
    user_id:      User.first.id
  },
  {
    name:         'Hulk',
    price:        10,
    description:  'The Hulk is a superhero appearing in publications by the American publisher Marvel Comics.',
    location:     'New York',
    user_id:      User.last.id
  },
  {
    name:         'Wonder Woman',
    price:        2000,
    description:  "Before she was Wonder Woman, she was Diana, princess of the Amazons, trained to be an unconquerable warrior.",
    location:     "Madagascar",
    user_id:      User.first.id
  }
]

Superhero.create!(superheroes_attributes)
puts "Finished creating #{superheroes_attributes.length} superheroes!"
