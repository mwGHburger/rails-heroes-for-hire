# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Superhero.destroy_all
puts 'Assembling superheroes...'

superheroes_attributes = [
  {
    name:         'Batman',
    price:        1000,
    description:  'I am Batman.',
    location:     'Gotham'
  },
  {
    name:         'Superman',
    price:        200,
    description:  'I am Superman.',
    location:     'Manhattan'
  },
  {
    name:         'Ironman',
    price:        3000,
    description:  'I am Ironman.',
    location:     'California'
  },
  {
    name:         'Captain America',
    price:        1,
    description:  'I am Ironman.',
    location:     'Canada'
  },
  {
    name:         'Hulk',
    price:        10000,
    description:  'GRRRRRRrrrrrr',
    location:     'Laboratory'
  }
]

Restaurant.create!(restaurants_attributes)
puts "Finished creating #{restaurants_attributes.length} superheroes!"
