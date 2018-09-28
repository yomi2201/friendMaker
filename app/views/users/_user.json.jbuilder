json.extract! user, :id, :name, :icon_animal, :icon_color, :created_at, :updated_at
json.url user_url(user, format: :json)
