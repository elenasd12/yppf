json.array!(@users) do |user|
  json.extract! user, :id, :user, :email, :password, :state
  json.url user_url(user, format: :json)
end
