json.array!(@bills) do |bill|
  json.extract! bill, :id, :userid, :expenseid, :day_month, :month, :year
  json.url bill_url(bill, format: :json)
end
