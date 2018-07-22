def promedio(h)
	tam = h.length
	sum = 0
	h.each_value do |value| 
		sum = sum + value
	end 
	prome = sum / tam
end

personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]

personas_hash = {}

personas.each do |i|
	valor = personas.index i
	personas_hash[i] = edades[valor]
end

p personas_hash

p promedio(personas_hash)