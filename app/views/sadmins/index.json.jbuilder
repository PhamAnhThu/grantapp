json.array!(@sadmins) do |sadmin|
  json.extract! sadmin, :id, :first_name, :last_name, :email, :organization, :phone_number
  json.url sadmin_url(sadmin, format: :json)
end
