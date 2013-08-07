json.array!(@direccions) do |direccion|
  json.extract! direccion, :calle, :zona, :casa, :ciudad
  json.url direccion_url(direccion, format: :json)
end
