json.extract! hospital, :id, :city_id, :name_hospital, :address, :phone_number, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
