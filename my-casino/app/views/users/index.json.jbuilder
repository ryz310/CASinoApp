json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_hash, :email, :fullname, :role
  json.url user_url(user, format: :json)
end
