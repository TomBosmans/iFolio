json.array!(@profiles) do |profile|
  json.extract! profile, :id, :firstname, :lastname, :profile_picture, :bio
  json.url profile_url(profile, format: :json)
end
