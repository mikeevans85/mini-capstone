json.quilts @quilts.each do |q|
  json.name q["name"]
  json.price q["price"]
  json.size q["size"]
  json.description q["description"]
end






