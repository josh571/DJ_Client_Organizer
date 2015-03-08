dj_clients = {
  Jillian_DeBrosse: 2015_10_10,
  Cara_Curtis, 2015_08_15,
}

puts "What would you like to do?"
puts "-- Type 'add' to add a DJ client."
puts "-- Type 'update' to update a client date."
puts "-- Type 'display' to display all DJ clients."
puts "-- Type 'delete' to delete a client."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What client do you want to add?"
  client = gets.chomp
  if dj_clients[client.to_sym].nil?
    puts "What's the date? (Enter yyyy_mm_dd)"
    date = gets.chomp
    dj_clients[client.to_sym] = date.to_i
    puts "#{client} has been added with a date of #{date}."
  else
    puts "That client already exists! Its date is #{dj_clients[client.to_sym]}."
  end
when 'update'
  puts "What client do you want to update?"
  client = gets.chomp
  if dj_clients[client.to_sym].nil?
    puts "Client not found!"
  else
    puts "What's the new date? (Enter yyyy_mm_dd)"
    date = gets.chomp
    dj_clients[client.to_sym] = date.to_i
    puts "#{client} has been updated with new date of #{date}."
  end
when 'display'
  dj_clients.each do |client, date|
    puts "#{client}: #{date}"
  end
when 'delete'
  puts "What client do you want to delete?"
  client = gets.chomp
  if dj_clients[client.to_sym].nil?
    puts "Client not found!"
  else
    dj_clients.delete(client.to_sym)
    puts "#{client} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end