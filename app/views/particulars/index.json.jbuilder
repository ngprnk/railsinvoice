json.array!(@particulars) do |particular|
  json.extract! particular, :id, :itemname, :quantity, :rate
  json.url particular_url(particular, format: :json)
end
