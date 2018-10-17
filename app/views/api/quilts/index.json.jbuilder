json.array! @quilts.each do |quilt|
  json.id quilt.id
  json.name quilt.name
  json.size quilt.size
  json.description quilt.description
  json.price quilt.price
  json.total_with_tax quilt.total.to_i
end










