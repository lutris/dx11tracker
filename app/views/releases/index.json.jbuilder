json.array!(@releases) do |release|
  json.extract! release, :id, :name, :commit_hash
  json.url release_url(release, format: :json)
end
