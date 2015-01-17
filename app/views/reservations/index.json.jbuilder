json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :phone, :email, :datetime, :isFlexible, :message, :status
  json.url reservation_url(reservation, format: :json)
end
