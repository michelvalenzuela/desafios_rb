puts "Programa Velocidad de escape - Calculo de la velocidad que se necesita para salir de un planeta."
gravity = ARGV[0].to_f
kilometers = ARGV[1].to_i

transforms = kilometers*1000.to_f
mtsqrt = Math.sqrt(2*gravity*transforms)
puts "la velocidad de escape para salir del planeta es #{mtsqrt}"


