pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

def clear_steps(n)
    aux = []
    n.each do |i|
        if i.to_i.to_s == i and i.to_i > 200 and i.to_i < 100000
            aux.push(i)
        end
    end
    return aux
end

puts clear_steps(pasos).to_s