json.array!(@seasons) do |season|
  json.extract! season, :id, :title
  json.url season_url(season, format: :json)
end
