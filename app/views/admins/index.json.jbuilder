json.array!(@admins) do |admin|
  json.extract! admin, :id, :first_name, :last_name, :email, :password, :admin_key
  json.url admin_url(admin, format: :json)
end
