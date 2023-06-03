# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.unique.email }
    password { '123456789' }
    password_confirmation { password }
    phone { Faker::Number.positive.round(0) }
    dni { Faker::Number.positive.round(0) }
    birthday { Faker::Date.between(from: '01/01/1990', to: '01/01/2010') }
    address do
      {
        country: Faker::Address.country,
        city: Faker::Address.city,
        province: Faker::Address.state,
        street: Faker::Address.street_name,
        height: Faker::Address.building_number,
        postal_code: Faker::Address.postcode,
        floor: Faker::Address.secondary_address,
        door: nil
      }
    end
  end
end
