json.items @items do |item|
  json.id item.id
  json.title item.title
  json.body item.body
  json.link item.link
  json.category item.category
  json.location item.location
  json.date item.date
  json.created_at item.created_at
  json.cause item.cause
end

