json.actions @article.action_items do |item|
  json.name item.action.name
  json.link item.link
  json.phone item.phone
  json.email item.email
  json.info item.info
end