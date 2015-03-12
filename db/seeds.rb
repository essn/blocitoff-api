# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_user = User.new(
  email: "jessepledger@gmail.com",
  password: "password"
)

test_user.save
test_user.skip_confirmation!

5.times do |num = 1|
  Item.create!(
    name: "take out trash #{num}",
    user: test_user
  )
  num += 1
end