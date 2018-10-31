json.array! @list.each do |product|
  json.user product.user_id
  json.product product.product
  json.quantity product.quantity
  json.status product.status
  json.order product.order_id
end