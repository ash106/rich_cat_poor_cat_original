# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

cat = Cat.new(finances: "rich", x: 241, y: 267, radius: 35)
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_1.jpg')
cat.save!

cat = Cat.new(finances: "rich", x: 212, y: 65, radius: 65)
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_2.jpg')
cat.save!

cat = Cat.new(finances: "rich", x: 213, y: 175, radius: 60)
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_3.jpg')
cat.save!

cat = Cat.new(finances: "rich", x: 160, y: 165, radius: 37)
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_4.jpg')
cat.save!

cat = Cat.new(finances: "rich", x: 68, y: 185, radius: 55)
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_5.jpg')
cat.save!

cat = Cat.new(finances: "poor", x: 328, y: 197, radius: 75)
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_1.jpg')
cat.save!

cat = Cat.new(finances: "poor", x: 105, y: 225, radius: 98)
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_2.jpg')
cat.save!

cat = Cat.new(finances: "poor", x: 232, y: 107, radius: 55)
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_3.jpg')
cat.save!

cat = Cat.new(finances: "poor", x: 157, y: 196, radius: 81)
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_4.jpg')
cat.save!

cat = Cat.new(finances: "poor", x: 158, y: 85, radius: 47)
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_5.jpg')
cat.save!