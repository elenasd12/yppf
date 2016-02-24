json.array!(@incomes) do |income|
  json.extract! income, :id, :userid, :income, :type, :value, :frequency, :day_rec, :month, :year
  json.url income_url(income, format: :json)
end
