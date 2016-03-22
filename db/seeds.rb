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
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 1, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 2, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 3, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 4, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 5, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 6, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 7, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 8, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 9, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 10, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 11, year: Date.today.year)
  Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 12, year: Date.today.year)

  # Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: Date.today.month, year: Date.today.year)
  # Expense.create(expenseid: "IDIDIDID", user_id: 1, expensetype: Faker::Commerce.department, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: Date.today.month+1, year: Date.today.year)


end

5.times do
  # Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.between(from = 1901, to=2016))
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 1, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 2, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 3, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 4, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 5, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 6, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 7, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 8, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 9, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 10, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 11, year: Date.today.year)
  Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: 12, year: Date.today.year)


  # Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: Date.today.month, year: Date.today.year)
  # Income.create(user_id: 1, income: "Money", incometype: "salary", value: Faker::Commerce.price, frequency: "biweekly", day_rec: Faker::Number.number(2), month: Date.today.month+1, year: Date.today.year)


end
