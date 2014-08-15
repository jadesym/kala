json.array!(@contactusmsgs) do |contactusmsg|
  json.extract! contactusmsg, :id, :first_name, :last_name, :user_id, :email, :phone_number
  json.url contactusmsg_url(contactusmsg, format: :json)
end
