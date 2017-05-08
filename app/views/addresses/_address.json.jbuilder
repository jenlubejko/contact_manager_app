json.extract! address, :id, :street, :city, :state, :country, :zip, :latitude, :longitude, :contact_id, :created_at, :updated_at
json.url address_url(address, format: :json)
