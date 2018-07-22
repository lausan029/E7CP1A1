inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

puts 'Ingrese una opcion:'
puts '	1 - Agregar Item ("Pendrives, 100")'
puts '	2 - Eliminar Item'
puts '	3 - Actualizar'
puts '	4 - Visualizar'
puts '	5 - Mayor Stock'
puts '	6 - Existentes'
puts '	7 - Salir'
num = gets.chomp.to_i

while num != 7
	case num
	when 1
	  puts 'Indique el producto que desea agregar'
	  add = gets.chomp
	  add = add.split(",")
	  inventario[add[0].to_sym] = add[1].to_i
	  puts '----------------------------'
	  puts 'Se agregó un nuevo produto'
	  puts inventario
	  puts '----------------------------'
	when 2
	  puts 'Indique el producto que desea eliminar'
	  del = gets.chomp
	  inventario.delete(del)
	  puts '----------------------------'
	  puts inventario
	  puts '----------------------------'

	when 3
	  puts 'Indique el producto que desea actualizar'
	  update = gets.chomp
	  update = update.split(",")
	  inventario[update[0]] = update[1].to_i
	when 4
	  puts '----------------------------'
	  puts inventario
	  puts '----------------------------'
	when 5
		mas_stock = inventario.values.max
	  puts '----------------------------'
	  puts 'Producto con mayor stock es:'
	  puts inventario.key(mas_stock)
	  puts '----------------------------'
	when 6
		puts 'Indique el producto que desea validar'
	  existe = gets.chomp
	  existe = existe.to_sym
	  puts inventario.has_key?(existe)
	else
	  puts "Introduzca una opcion correcta"
	end

	puts 'Ingrese una opcion:'
	puts '	1 - Agregar Item ("Pendrives, 100")'
	puts '	2 - Eliminar Item'
	puts '	3 - Actualizar'
	puts '	4 - Visualizar'
	puts '	5 - Mayor Stock'
	puts '	6 - Existentes'
	puts '	7 - Salir'
	num = gets.chomp.to_i
end

puts "Hasta Luego"
