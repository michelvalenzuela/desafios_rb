notas1 = [1000, 800, 250, 300, 500, 2500]
notas2 = [500, 200, 100, 50, 250, 500]

def promedio(x)
    aux = 0
    x.each do |i|
        aux = aux + i
    end
    return aux/x.length
end

def compara_arrays(n, i)
    promedio1 = promedio(n)
    promedio2 = promedio(i)
    if promedio1 > promedio2
        puts promedio1
    else
        puts promedio2
    end
end

puts compara_arrays(notas1, notas2)