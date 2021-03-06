json.items @results do |extension|
	json.extension_owner extension.owner_name
  json.extension_name extension.name
  json.extension_maintainer extension.maintainer
  json.extension_description extension.description
  json.extension api_v1_extension_url(
                   extension,
                   username: extension.owner_name)
end
