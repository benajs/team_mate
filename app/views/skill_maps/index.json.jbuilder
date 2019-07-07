json.array!(@skill_maps) do |skill_map|
  json.extract! skill_map, :id, :skill_id, :user, :range
  json.url skill_map_url(skill_map, format: :json)
end
