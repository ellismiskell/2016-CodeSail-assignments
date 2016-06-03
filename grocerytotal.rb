require 'csv'
groceryitems = CSV.read('/Users/ellisburgoonmiskell/Desktop/codesail/grocery_list.csv', headers: true)
groceryitems['grocery_name']
@grocerylist = []
@finalprice = 0
userinput = gets.strip.chomp.downcase
while userinput != 'done'
  hash = groceryitems.select { |x| x['grocery_name'] == userinput }
  puts "how many?"
  quantity = gets.strip.chomp.to_f
  @grocerylist << [userinput,quantity,hash[0]['price']]
  @finalprice +=hash[0]['price'].to_f * quantity
  userinput = gets.strip.chomp.downcase
end
puts @grocerylist
puts @finalprice
