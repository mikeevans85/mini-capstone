json.array! @list.each do |product|
  json.user product.user_id
  json.product product.product_id
  json.quantity product.quantity
  json.status product.status
  json.order product.order_id
end