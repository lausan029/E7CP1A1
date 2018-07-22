meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

ventas_hash = {}

meses.each do |i|
	valor = meses.index i
	ventas_hash[i] = ventas[valor]
end

p ventas_hash

new_ventas = ventas_hash.invert

p new_ventas.keys.max
p new_ventas.values.max