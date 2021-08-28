puts "Programa emprendedor1 - Calculo de utilidades"
precio = ARGV[0].to_f
puts "El valor de la app es: #{precio} USD"

usuarios = ARGV[1].to_i
puts "La cantidad de usuarios totales es #{usuarios}"

gastos = ARGV[2].to_f
puts "El gasto de la app es: #{gastos} USD"


utilidades = ((precio * usuarios) - gastos)

iva = (utilidades * 0.35)

if utilidades > 0
    puts "\e[0;32m Los impuestos aplicados son #{iva} USD\e[0m\n"
else
    puts "\e[0;31m No se aplicaron impuestos \e[0m\n"
end