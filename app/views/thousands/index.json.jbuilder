json.array!(@thousands) do |thousand|
  json.extract! thousand, :id, :num
  json.url thousand_url(thousand, format: :json)
end
