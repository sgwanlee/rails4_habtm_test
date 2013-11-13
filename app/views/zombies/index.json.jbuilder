json.array!(@zombies) do |zombie|
  json.extract! zombie, 
  json.url zombie_url(zombie, format: :json)
end
