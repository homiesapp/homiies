json.array!(@events) do |event|
  json.extract! event, :id, :title, :city, :country, :address, :postal_code, :time, :description, :picture, :lat, :long, :category
  json.url event_url(event, format: :json)
end
