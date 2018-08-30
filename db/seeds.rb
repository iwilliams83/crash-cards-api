# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'Belle', email: 'belle@disney.com' },
   { name: 'Adam', email: 'adam@disney.com' }])

decks = Deck.create([{subject: 'Literature', user: users.first},
  {subject: 'Geography', user: users.last}])

Card.create([{front: 'Romeo & Juliet', back: 'William Shakespeare', deck: decks.first},
  {front: 'To Kill A Mockingbird', back: 'Harper Lee', deck: decks.first},
  {front: 'The Color Purple', back: 'Alice Walker', deck: decks.first},
  {front: 'The Grapes of Wrath', back: 'John Steinbeck', deck: decks.first},
  {front: 'Beloved', back: 'Toni Morrison', deck: decks.first},
  {front: 'Dracula', back: 'Bram Stoker', deck: decks.first},
  {front: 'Argentina', back: 'Buenos Aires', deck: decks.last},
  {front: 'Malaysia', back: 'Kuala Lumpur', deck: decks.last},
  {front: 'Syria', back: 'Damascus', deck: decks.last},
  {front: 'Romania', back: 'Bucharest', deck: decks.last},
  {front: 'Iceland', back: 'Reykjavik', deck: decks.last}])
