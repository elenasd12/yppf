json.array!(@incomes) do |income|
  json.extract! income, :id, :user_id, :income, :incometype, :value, :frequency, :day_rec, :month, :year
  json.url income_url(income, format: :json)
end
