# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Board.create(
    name: Faker::RickAndMorty.character,
  )
end

300.times do
  Song.create(
    name: Faker::Hipster.word,
    board_id: Faker::Number.between(1, 10)
    )
end

@x = 0

300.times do
  @x += 1
  Artist.create(
    name: Faker::RockBand.name,
    song_id: @x,
  )
end
