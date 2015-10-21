json.array!(@addresses) do |address|
  json.extract! address, :id, :FamilyID, :AddressLine1, :AddressLine2, :City, :State, :ZIP, :County
  json.url address_url(address, format: :json)
end
