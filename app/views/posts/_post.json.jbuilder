json.extract! post, :id, :title, :text, :photo, :emotion_id, :created_at, :updated_at
json.url post_url(post, format: :json)