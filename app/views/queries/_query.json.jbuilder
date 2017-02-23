json.extract! query, :id, :raw_input, :classification_id, :user_id, :resolved, :created_at, :updated_at
json.url query_url(query, format: :json)