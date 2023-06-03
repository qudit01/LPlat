# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(first_name: 'Admin', last_name: 'User', email: 'admin@user.com', password: 123_456,
            password_confirmation: 123_456, phone: 123_456, dni: 12_345_698,
            address: { city: 'SinCity', street: 'Fake street', street_number: 123,
                       country: 'Narnia,', height: 123, postal_code: 1234, floor: nil, door: nil })
User.create(first_name: 'Colab', last_name: 'User', email: 'colab@user.com', password: 123_456,
            password_confirmation: 123_456, phone: 123_456, dni: 12_345_689,
            address: { city: 'SinCity', street: 'Fake street', street_number: 123,
                       country: 'Narnia,', height: 123, postal_code: 1234, floor: nil, door: nil })

FactoryBot.create_list(:user, 10)
