filtro = ARGV[0].to_i

data = open('procesos.data')
lineas = data.readlines

lineas_filtradas = lineas.map {|i| i.chomp.to_i}

lineas_seleccionadas = lineas_filtradas.select{ |x| x > filtro}

puts lineas_seleccionadas

File.write('procesos_filtrados.data', lineas_seleccionadas.join("\n"))