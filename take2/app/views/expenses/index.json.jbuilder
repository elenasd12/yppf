json.array!(@expenses) do |expense|
  json.extract! expense, :id, :expenseid, :userid, :type, :frequency, :projvalue, :actvalue, :percent, :month, :year
  json.url expense_url(expense, format: :json)
end
