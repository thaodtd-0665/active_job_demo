# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create name: "Test", email: "test@mail.test"
10.times do |i|
  user.notifications.create content: "Content #{i}", status: Notification.statuses.keys.sample
end