json.array! @list.each do |order|
  json.id order.id
  json.product order.product_id
  json.quantity order.quantity
  json.subtotal order.subtotal
  json.tax order.tax
  json.total order.total
end