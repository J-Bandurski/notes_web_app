<<<<<<< HEAD
json.extract! topic, :id, :title, :body, :created_at, :updated_at
=======
json.extract! topic, :id, :title, :url, :created_at, :updated_at
>>>>>>> a5d0d164b69b74a6b48327d5fc3f099d774a13e3
json.url topic_url(topic, format: :json)
