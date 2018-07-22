restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

mas_caro = restaurant_menu.values.max
mas_barato = restaurant_menu.values.min

p restaurant_menu.key(mas_caro)
p restaurant_menu.key(mas_barato)

p restaurant_menu.keys
p restaurant_menu.values


restaurant_menu.each do |k,v|
	restaurant_menu[k] = v * 1.19
end


p restaurant_menu
 
restaurant_menu.map do |k,v|
 	if k.split(" ").length > 1 
 		restaurant_menu[k] = v - (v * 0.2)
 	end
end

p restaurant_menu