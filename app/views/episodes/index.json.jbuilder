json.array!(@episodes) do |episode|
  json.extract! episode, :id, :title, :season_id, :number, :duration, :watched
  json.url episode_url(episode, format: :json)
end
