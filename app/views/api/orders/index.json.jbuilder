json.array! @list.each do |order|
  json.id order.id
  json.subtotal order.subtotal
  json.tax order.tax
  json.total order.total
end