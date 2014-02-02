json.array!(@addresses) do |address|
  json.extract! address, :id, :city, :country, :order_id
  json.url address_url(address, format: :json)
end
