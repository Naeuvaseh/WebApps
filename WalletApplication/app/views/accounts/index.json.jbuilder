json.array!(@accounts) do |account|
  json.extract! account, :id, :Name, :User_id, :Category_id
  json.url account_url(account, format: :json)
end
