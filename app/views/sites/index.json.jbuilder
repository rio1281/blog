json.array!(@sites) do |site|
  json.extract! site, :title
  json.url site_url(site, format: :json)
end