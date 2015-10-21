json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :Date, :Amount, :Details, :Category_id, :Account_id
  json.url transaction_url(transaction, format: :json)
end
