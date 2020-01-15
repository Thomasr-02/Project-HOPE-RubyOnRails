json.extract! user, :id, :first_name, :last_name, :profission, :date_nasc, :type_user, :email, :phone, :cpf, :addr_state, :addr_country, :addr_city, :addr_street, :addr_zipcode, :password, :data, :image_url, :movie_url, :created_at, :updated_at
json.url user_url(user, format: :json)
