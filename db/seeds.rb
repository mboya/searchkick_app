# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

NUMBER_OF_TIMES = 500

NUMBER_OF_TIMES.times do |i|
  Product.create({
    code: Faker::Barcode.upc_e_with_composite_symbology,
    name: Faker::Commerce.product_name,
    vanity_name: Faker::Commerce.product_name
  })

  progress = "=" * (i/(NUMBER_OF_TIMES/20)) unless i < 5
  printf("\rProgress: [%-20s] %d%%", progress, (i/(NUMBER_OF_TIMES/100))+1)
  sleep(0.1)
end