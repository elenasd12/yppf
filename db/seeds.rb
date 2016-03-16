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

User.create(email: "yppf2016@gmail.com", state: "MA", name: "YPPF", password: 'brandeis16', password_confirmation: 'brandeis16', id: 1)

5.times do
  # Bill.create(expenseid: Faker::Commerce.department, day_month: Faker::Number.number(2), month: Faker::Number.between(from =1, to =12), year: Faker::Number.between(from = 1901, to=2016), user_id: 1)
  Bill.create(expenseid: Faker::Commerce.department, day_month: Faker::Number.number(2), month: Date.today.month, year: Date.today.year, user_id: 1)

end

10.times do
  # Expense.create(expenseid: Faker::Commerce.department, user_id: 1, expensetype: Faker::Lorem.word, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: Faker::Number.between(from = 1, to =12), year: Faker::Number.between(from = 1901, to=2016))
  Expense.create(expenseid: Faker::Commerce.department, user_id: 1, expensetype: Faker::Lorem.word, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: Date.today.month, year: Date.today.year)

end

10.times do
  # Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.between(from = 1901, to=2016))
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: Date.today.month, year: Date.today.year)

end
