json.extract! card, :id, :title, :type_usr_id, :type_card_id, :description, :image_url, :movie_url, :link_url, :headline, :context, :created_at, :updated_at
json.url card_url(card, format: :json)
