eleccion_del_usuario = ARGV[0]

puts ">>> eleccion_del_usuario: #{eleccion_del_usuario}"

eleccion_del_pc = Random.rand(3)

puts ">>> =========="
puts ">>> eleccion_del_pc: #{eleccion_del_pc}"

# Si el numero aleatorio fue:
# 0: el computador jugo piedra
# 1: el computador jugo papel
# 2: el computador jugo tijera


if eleccion_del_usuario == 'piedra'
  if eleccion_del_pc == 0
    puts "eleccion del pc juega piedra, empate"
  elsif eleccion_del_pc == 1
    puts "eleccion del pc juega papel, perdiste :("
  elsif eleccion_del_pc == 2
    puts "eleccion del pc juega tijera, ======== ganaste"
  end
elsif eleccion_del_usuario == 'papel'
  if eleccion_del_pc == 0
    puts "eleccion del pc juega piedra, ======== ganaste"
  elsif eleccion_del_pc == 1
    puts "eleccion del pc juega papel, empate"
  elsif eleccion_del_pc == 2
    puts "eleccion del pc juega tijera, perdiste :("
  end
elsif eleccion_del_usuario == 'tijera'
  if eleccion_del_pc == 0
    puts "eleccion del pc juega piedra, perdiste :("
  elsif eleccion_del_pc == 1
    puts "eleccion del pc juega papel, ======= ganaste"
  elsif eleccion_del_pc == 2
    puts "eleccion del pc juega tijera, empate"
  end
end







