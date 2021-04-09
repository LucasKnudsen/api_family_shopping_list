items = ['Tandpasta', 'Slik', 'Öl', 'Chips', 'Måske lidt mad']

items.each do |item|
  Grocery.create(name: item)
end
