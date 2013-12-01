json.array!(@posts) do |post|
  json.extract! post, :title, :body, :site_id
  json.url post_url(post, format: :json)
end