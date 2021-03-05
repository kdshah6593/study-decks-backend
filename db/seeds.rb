# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Deck.destroy_all
Flashcard.destroy_all

kunal = User.create(username: 'kunals')

ruby = Deck.create(title: "Ruby", user_id: kunal.id)
javascript = Deck.create(title: "JavaScript", user_id: kunal.id)

each = Flashcard.create(front: ".each", back: "iterator that loops through collection. It does not change the return value. Implicitly returns the original collection", deck_id: ruby.id)
collect = Flashcard.create(front: ".collect", back: "iterator that loops through collection. Need to explicitly tell it to return a different value. It will provide new return value after each element is iterated. Will not change original array, returns a new one", deck_id: ruby.id)

destructure = Flashcard.create(front: "destructute", back: "A way for us to declare and assign variables with less code", deck_id: javascript.id)
equality = Flashcard.create(front: "strict equality operator", back: "===", deck_id: javascript.id)
