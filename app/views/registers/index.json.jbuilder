json.array!(@registers) do |register|
  json.extract! register, :id, :email, :name, :notify
  json.url register_url(register, format: :json)
end
