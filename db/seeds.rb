# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

cat = Cat.new(finances: "rich", mask_params: "241, 267, 35")
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_1.jpg')
cat.save!

cat = Cat.new(finances: "rich", mask_params: "212, 65, 65")
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_2.jpg')
cat.save!

cat = Cat.new(finances: "rich", mask_params: "213, 175, 60")
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_3.jpg')
cat.save!

cat = Cat.new(finances: "rich", mask_params: "160, 165, 37")
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_4.jpg')
cat.save!

cat = Cat.new(finances: "rich", mask_params: "68, 185, 55")
cat.image = open('http://wheatboxstudios.com/cats/rich_cat_5.jpg')
cat.save!

cat = Cat.new(finances: "poor", mask_params: "328, 197, 75")
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_1.jpg')
cat.save!

cat = Cat.new(finances: "poor", mask_params: "105, 225, 98")
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_2.jpg')
cat.save!

cat = Cat.new(finances: "poor", mask_params: "232, 107, 55")
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_3.jpg')
cat.save!

cat = Cat.new(finances: "poor", mask_params: "157, 196, 81")
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_4.jpg')
cat.save!

cat = Cat.new(finances: "poor", mask_params: "158, 85, 47")
cat.image = open('http://wheatboxstudios.com/cats/poor_cat_5.jpg')
cat.save!