json.extract! topic, :id, :topics_title, :content, :description, :duration, :image_url, :demonstrator, :package_price, :queries_email, :created_at, :updated_at
json.url topic_url(topic, format: :json)
