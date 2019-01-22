json.extract! news, :id, :new_name, :image, :date, :url, :created_at, :updated_at
json.url news_url(news, format: :json)
