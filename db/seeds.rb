# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bill.delete_all
Expense.delete_all
Income.delete_all
User.delete_all

User.create(user: "Eden", email: "shoshan.eden@gmail.com", password: "brandeis16", state: "MA")


5.times do
  Bill.create(userid: "Eden", expenseid: Faker::Commerce.department, day_month: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.number(4))
end

# 5.times do
#   User.create(user: "Eden", email: Faker::Internet.email, password: Faker::Internet.password, state: Faker::Address.state_abbr)
# end



5.times do
  Expense.create(expenseid: Faker::Commerce.department, userid: "Eden", expensetype: Faker::Lorem.word, frequency: "biweekly", projvalue: 0.1, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.number(4))
end

5.times do
  Income.create(userid: "Eden", income: "Money", incometype: "salary", value: "Faker::Commerce.price", frequency: "biweekly", day_rec: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.number(4))
end
