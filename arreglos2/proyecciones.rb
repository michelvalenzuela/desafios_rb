data = open('ventas_base.db')
ventas = data.read

ventas_array = ventas.chomp.split(",")
ventas_array = ventas_array.map {|i| i.chomp.to_i}

ventas_totales1 = 0 
ventas_array[0..2].each do |i|
    ventas_totales1 = ventas_totales1 + (i*1.1)
end
ventas_totales1 = ventas_totales1 + ventas_array[3..5].inject(0, :+)

ventas_totales2 = 0
ventas_array[9..11].each do |n|
    ventas_totales2 = ventas_totales2 + (n*1.2)
end

ventas_totales2 = ventas_totales2 + ventas_array[6..8].inject(0, :+)

salida = "%0.2f\n%0.2f" % [ventas_totales1, ventas_totales2]

File.write('resultados.data', salida)