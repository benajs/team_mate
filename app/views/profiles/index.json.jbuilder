json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :name, :employee_id, :im, :designation_id, :manager_id, :is_admin
  json.url profile_url(profile, format: :json)
end
