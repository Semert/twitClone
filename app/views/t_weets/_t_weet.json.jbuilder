json.extract! t_weet, :id, :Tweet, :created_at, :updated_at
json.url t_weet_url(t_weet, format: :json)
