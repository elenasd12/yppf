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
ExpenseCategory.delete_all
Listofvalue.delete_all
ExpenseReference.delete_all

MONTHS = [0, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
TYPE = ['Rent', 'Electric', 'Heat', 'TV', 'Internet', 'Groceries', 'Eating Out', 'Entertainment', 'Clothing', 'Transportation']
#User
User.create(email: "yppf2016@gmail.com", state: "MA", name: "YPPF", password: 'brandeis16', password_confirmation: 'brandeis16', id: 1)

#Expense Reference
(0..9).each do |i|
ExpenseReference.create(user_id: 1, ref_value: Faker::Commerce.price,ref_type: 1,ref_status: 1,ref_month: 3,ref_year: Date.today.year,expense_category_id: 1+i)
end

#List of Values
Listofvalue.create(lov_domain: "exp_ref_type",lov_key: 1,lov_value: 'Once')
Listofvalue.create(lov_domain: "exp_ref_type",lov_key: 2,lov_value: 'Every Month')

(1..12).each do |i|
  Listofvalue.create(lov_domain: "month",lov_key: i,lov_value: MONTHS[i])
end
(0..11).each do |i|
  Listofvalue.create(lov_domain: "year",lov_key: 2005+i,lov_value: (2005+i).to_s)
end



# 5.times do
#   # Bill.create(expenseid: Faker::Commerce.department, day_month: Faker::Number.number(2), month: Faker::Number.between(from =1, to =12), year: Faker::Number.between(from = 1901, to=2016), user_id: 1)
#   Bill.create(day_month: Faker::Number.number(2), month: Date.today.month, year: Date.today.year, user_id: 1)
#
# end


#Expense Categories
(0..9).each do |i|
  ExpenseCategory.create(exp_name: TYPE[i], id: i+1,exp_type: 1)
end
ExpenseCategory.create(exp_name: 'Phone Bill', id: 11,exp_type: 2)

#Expenses
(0..9).each do |i|
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 1, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 2, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 3, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 4, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 5, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 6, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 7, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 8, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 9, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 10, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 11, year: Date.today.year)
  Expense.create(user_id: 1, expense_category_id: 1+i, expensetype: 0, frequency: "biweekly", projvalue: Faker::Commerce.price, actvalue: Faker::Commerce.price, percent: Faker::Number.number(2), month: 12, year: Date.today.year)
end


5.times do
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

end
