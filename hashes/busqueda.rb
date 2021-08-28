ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

user = ARGV.map {|i| i.chomp.to_i}

user.each do |value|
    exist = false
    ventas.each do |month, sells|
        if value == sells
            exist = true
            puts month

            break
        end
    end

    if not exist
        puts "no encontrado"
    end
end