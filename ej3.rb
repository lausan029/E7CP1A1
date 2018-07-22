h = {"x": 1, "y":2}
h[:z] = 3
h[:x] = 5
h.delete(:y)
p h

h.map do |k,v|
	if k == :z
		p 'yeah'
	end
end

p h.invert