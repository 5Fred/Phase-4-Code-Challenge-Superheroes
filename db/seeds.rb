# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all

heroes = [
  { name: 'Kamala Khan', super_name: 'Ms. Marvel' },
  { name: 'Doreen Green', super_name: 'Squirrel Girl' },
  { name: 'Gwen Stacy', super_name: 'Spider-Gwen' }
]

powers = [
  { name: 'Super Strength', description: 'Gives the wielder super-human strength' },
  { name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed' }
]

heroes.each do |hero_attrs|
  Hero.create(hero_attrs)
end

powers.each do |power_attrs|
  Power.create(power_attrs)
end

heroes = Hero.all
powers = Power.all

heroes.each do |hero|
  powers.each do |power|
    HeroPower.create(strength: ['Strong', 'Average', 'Weak'].sample, hero: hero, power: power)
  end
end