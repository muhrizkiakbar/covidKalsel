json.extract! news, :id, :user_id, :tittle, :content, :created_at, :updated_at
json.url news_url(news, format: :json)
