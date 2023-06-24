# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

college1 = College.create(
    college_name: 'Pokemon University'
)

User.create(
    first_name: 'Ash',
    last_name: 'Ketchum',
    phone_number: '1234567890',
    college_id: college1.id,
    exam_id: 1,
)
