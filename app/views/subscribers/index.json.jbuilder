json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :name, :email, :instagram
  json.url subscriber_url(subscriber, format: :json)
end
