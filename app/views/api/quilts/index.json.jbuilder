json.array! @quilts.each do |quilt|
  json.partial! "product.json.jbuilder", quilt: quilt
end

# json.array! @suppliers.each do |supplier|
#   json.partial! "supplier.json.jbuilder", supplier: supplier
# end



