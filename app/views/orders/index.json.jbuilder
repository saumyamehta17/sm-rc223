json.array!(@orders) do |order|
  json.extract! order, :id, :number, :purchased, :shipping, :price
  json.url order_url(order, format: :json)
end
