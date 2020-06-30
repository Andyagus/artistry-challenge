puts "DESTROYIIING" 

Artist.destroy_all
Instrument.destroy_all
Studio.destroy_all

puts "CREATING ARTISTS………"

Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

puts "CREATING INSTRUMENTS"
Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")

puts "CREATING STUDIOS"
Studio.create(name: Faker::Company.name, instrument_id: Instrument.all.sample.id, artist_id: Artist.all.sample.id)
Studio.create(name: Faker::Company.name, instrument_id: Instrument.all.sample.id, artist_id: Artist.all.sample.id)
Studio.create(name: Faker::Company.name, instrument_id: Instrument.all.sample.id, artist_id: Artist.all.sample.id)
Studio.create(name: Faker::Company.name, instrument_id: Instrument.all.sample.id, artist_id: Artist.all.sample.id)


puts "ALL SET< ROCK ON > !"