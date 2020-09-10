json.extract! episode, :id, :title, :description, :number, :url, :created_at, :updated_at
json.url episode_url(episode, format: :json)
