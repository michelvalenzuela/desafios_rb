visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(x)
    aux = 0
    x.each do |i|
        aux = aux + i
    end
    puts aux/x.length
end

puts promedio(visitas)