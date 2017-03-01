
def create_list
  puts "Let's create a list for you: "
  print "What is the name of the list? "
  name = gets.chomp
  list = {"name" => name, "items" => Array.new}
  return list
end

def add_to_list
  print "What would you like to order? "
  items = gets.chomp
  print "How much do you want it? "
  quantity = gets.chomp.to_f
  new_list = {"item_name" => items, "quantity" => quantity}
  return new_list
end

def print_list(grocery)
  puts "List: " + grocery["name"]
  print_separator()
  puts "\t\tItem" + "\t\tQuantity"
  print_separator()
  grocery["items"].each do |item|
    puts "\t\t" + item["item_name"] + "\t\t" + item["quantity"].to_s
  end  
  print_separator()
end

def print_separator(character = "-")
  puts character *80
end

def ask_user()
  puts "Do you want to add more items? (y/n)"
  answer = gets.chomp
  return answer
end

grocery = create_list
puts "Great! Now, let's add some items to it."
grocery["items"].push(add_to_list)
grocery["items"].push(add_to_list)
response = ask_user
  if response == "y" || response == "yes" || response == "Y"
    grocery["items"].push(add_to_list) 
  end  
puts "Well, here is your list!"
print_list(grocery)








