# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |contact|
    contact = Contact.create(
      first_name: Faker::Name.unique.first_name,
      last_name: Faker::Name.unique.last_name,
      phone: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.unique.email,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr,
      zip: Faker::Address.zip,
      motto: Faker::Hacker.say_something_smart
      )
      5.times do |favorite|
      contact.favorites.create(
        beer: Faker::Beer.name,
        book: Faker::Book.title,
      )
    end
  end
  
  puts 'seeded'