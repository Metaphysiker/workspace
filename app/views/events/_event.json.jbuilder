json.extract! event, :id, :title, :starting, :ending, :created_at, :updated_at
json.url event_url(event, format: :json)
