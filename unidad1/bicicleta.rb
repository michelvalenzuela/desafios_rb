# EJEMPLO DE PROGRAMA ROBUSTO

begin
  # ==================================================
  # |
  # | ESTE SECTOR ES EL QUE ESTA PROTEGIDO
  # |

  edad = Integer(ARGV[0])
  puts "=================="
  puts "Edad: #{edad}"
  puts "=================="

  if (edad >= 18)
      puts "Puedo andar en auto"
  elsif (edad >= 5) # Equivalente a la instruccion de abajo
  # elsif (edad >= 5 and edad < 18) # Equivalente a la instruccion de arriba
    puts "Puedo andar en bicicleta"
  elsif (edad >= 0)
    puts "Tiene que esperar :("
  else
    puts "Error: edad debe ser positiva"
  end

  # |
  # | FIN DEL SECTOR PROTEGIDO
  # |
  # ==================================================
rescue
  # Lo pueden encontrar como ERROR HANDLING en Ruby. "TRY/CATCH"
  # Si ocurre un error en cualquier parte del sector protegido, el programa ira automaticamente a este sector: sector de RESCATE (rescue)
  # https://stackify.com/rescue-exceptions-ruby/
  #
  puts "Debe ingresar un número"
end

puts "::::::::::::: FIN :::::::::::::::::."

