eleccion_del_usuario = ARGV[0]

puts ">>> eleccion_del_usuario: #{eleccion_del_usuario}"

eleccion_del_pc = Random.rand(3)

puts ">>> =========="
puts ">>> eleccion_del_pc: #{eleccion_del_pc}"

# Si el numero aleatorio fue:
# 0: el computador jugo piedra
# 1: el computador jugo papel
# 2: el computador jugo tijera

pc = ''

if eleccion_del_pc == 0
  pc = 'piedra'
elsif eleccion_del_pc == 1
  pc = 'papel'
elsif eleccion_del_pc == 2
  pc = 'tijera'
end

puts "PC escogió: #{pc}"

if (eleccion_del_usuario == 'piedra' and pc == 'piedra')
  puts "EMPATE"
elsif (eleccion_del_usuario == 'papel' and pc == 'papel')
  puts "EMPATE"
elsif (eleccion_del_usuario == 'tijera' and pc == 'tijera')
  puts "EMPATE"
elsif (eleccion_del_usuario == 'piedra' and pc == 'tijera')
  puts "!!!!!!!!! GANASTE !!!!!!!!!!!!!"
elsif (eleccion_del_usuario == 'papel' and pc == 'piedra')
  puts "!!!!!!!!! GANASTE !!!!!!!!!!!!!"
elsif (eleccion_del_usuario == 'tijera' and pc == 'papel')
  puts "!!!!!!!!! GANASTE !!!!!!!!!!!!!"
elsif (eleccion_del_usuario == 'piedra' and pc == 'papel')
  puts ":( perdiste"
elsif (eleccion_del_usuario == 'papel' and pc == 'tijera')
  puts ":( perdiste"
elsif (eleccion_del_usuario == 'tijera' and pc == 'piedra')
  puts ":( perdiste"
end


