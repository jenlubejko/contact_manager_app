json.extract! contact, :id, :name, :company, :favorite, :smallImageURL, :largeImageURL, :email, :website, :birthdate, :created_at, :updated_at
json.url contact_url(contact, format: :json)
