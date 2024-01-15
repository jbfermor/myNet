json.extract! bio, :id, :nickname, :name, :surname1, :surname2, :birth_date, :address, :city, :province, :postal_code, :country, :phone, :user_id, :created_at, :updated_at
json.url bio_url(bio, format: :json)
