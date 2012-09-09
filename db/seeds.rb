# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Lesson.delete_all
User.delete_all

Lesson.create(name: 'Lesson 1 Introducing U and H: Home row, Index fingers', 
  content: 'uuuu hhhh uuuu hhhh uuuu hhhh uuuu hhhh',
  sequence: 1)

Lesson.create(name: 'Lesson 2 Introducing E and T: Home row, Second fingers',
  content: 'eeee tttt eeee tttt eeee tttt eeee tttt',
  sequence: 2)

User.create(name: 'jodm',
  password: 'password',
  password_confirmation: 'password')
