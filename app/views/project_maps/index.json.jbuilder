json.array!(@project_maps) do |project_map|
  json.extract! project_map, :id, :user_id, :project_id, :description
  json.url project_map_url(project_map, format: :json)
end
