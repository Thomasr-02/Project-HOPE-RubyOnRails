json.extract! message, :id, :text, :visualized, :send_user_id, :recive_user_id, :createAt, :created_at, :updated_at
json.url message_url(message, format: :json)
