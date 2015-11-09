json.array!(@bikes) do |bike|
  json.extract! bike, :id, :name, :price, :bike_id, :user_id, :description
  json.url bike_url(bike, format: :json)
end
