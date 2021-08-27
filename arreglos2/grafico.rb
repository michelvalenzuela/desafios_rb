def chart(array)
    numero_maximo = array.max
    for i in  0..(array.length + 1)
        if i == array.length
            puts ">" + "-"*(2 * numero_maximo)
        elsif i == array.length + 1
            for c in 1..numero_maximo
                print c.to_s.ljust(2)
            end
            print "\n"
        else
            puts "|" + "*"*(2 * array[i])
        end
    end
end

chart([5, 3, 2, 5, 10])