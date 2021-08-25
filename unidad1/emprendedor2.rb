puts "Programa emprendedor2 - Calculo de utilidades"
precio = ARGV[0].to_f
puts "El valor de la app es: #{precio} USD"

usuarios = ARGV[1].to_i
puts "La cantidad de usuarios totales es #{usuarios}"

usuariosPremium = ARGV[2].to_f
puts "La cantidad de usuarios premium es #{usuariosPremium}"


usuariosGratuitos = ARGV[3].to_f
puts "La cantidad de usuarios gratuitos es #{usuariosGratuitos}"

gastos = ARGV[4].to_f
puts "El gasto de la app es: #{gastos} USD"
usuariosReales = usuariosGratuitos + usuariosPremium + usuarios
usuariosP = usuariosPremium * 2
utilidadesF = usuariosReales - usuariosGratuitos
usuariosN = utilidadesF - usuariosPremium

utilidades = ((precio * usuariosN) - gastos)
utilidadesP = ((precio * usuariosP) - gastos)
utilidadesFinal = utilidades + utilidadesP

iva = (utilidadesFinal * 0.35)

if utilidadesFinal > 0
    puts "\e[0;32m Los impuestos aplicados son #{iva} USD\e[0m\n"
else
    puts "\e[0;31m No se aplicaron impuestos \e[0m\n"
end