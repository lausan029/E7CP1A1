productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |valor, producto| puts producto }

productos['cereal'] = 2200
productos['bebida'] = 2000

p productos

new_productos = productos.to_a
p new_productos

productos.delete('galletas')

p productos