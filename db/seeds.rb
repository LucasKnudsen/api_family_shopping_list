items = ['Tandpasta', 'Slik', 'Öl', 'Chips', 'Måske lidt mad', 'En rigtig lang sötning som skal gå ned på to linjer', 'Mere öl', 'Morgenmad', 'Fisk', 'Mer fisk']

items.each do |item|
  Grocery.create(name: item)
end
