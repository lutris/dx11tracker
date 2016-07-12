json.array!(@dlls) do |dll|
  json.extract! dll, :id, :name, :spec_path
  json.url dll_url(dll, format: :json)
end
