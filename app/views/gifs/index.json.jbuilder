json.array!(@gifs) do |gif|
  json.extract! gif, :id, :user, :feeling, :gif_id
  json.url gif_url(gif, format: :json)
end
