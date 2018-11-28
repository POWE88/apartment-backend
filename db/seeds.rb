# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

apartment1 = [
  {street: '7th and J',
    city: "San Diego",
    zipcode: "92101",
    state: "CA",
    country:"USA",
    managername: "Doug",
    managerphone: "619-999-9991",
    managerhours: "0900-1700"

  }]

apartment1.each do |attributes|
  Apartment.create(attributes)
end

#street, city, zipcode, state, country, managername, managerphone, managerhours
