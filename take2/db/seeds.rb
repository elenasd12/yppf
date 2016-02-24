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

5.times do
  Bill.create(userid: "Eden", expenseid: Faker::Lorem.word, day_month: Faker::Number.number(2), month: Faker::Number.number(1), year: Faker::Number.number(4))
end
# 
# 5.times do
#   Expense.create(expenseid: Faker:: Lorem.word, userid: "Eden", expensei)
# end
#
# t.text     "expenseid"
# t.text     "userid"
# t.text     "expensetype"
# t.text     "frequency"
# t.decimal  "projvalue"
# t.decimal  "actvalue"
# t.integer  "percent"
# t.integer  "month"
# t.integer  "year"


# (1..10).each do
#   Person.create(name: Faker::Name.name,
#     dob: Faker::Date.between(30.years.ago, 10.years.ago),
#     gender: ['f', 'm'].sample, zipcode: Faker::Address.zip)
#   end
#
# 3.times do
#   Registration.create(person: Person.all.sample, event: Event.all.sample)
# end
