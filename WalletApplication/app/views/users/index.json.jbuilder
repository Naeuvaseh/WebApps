json.array!(@users) do |user|
  json.extract! user, :id, :Email, :FirstName, :LastName, :Occupation, :Relationship, :FamilyID, :Address_id
  json.url user_url(user, format: :json)
end
