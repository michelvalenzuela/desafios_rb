n = ARGV[0].to_i
numerito = 1 
n.times do |i|
    if numerito == 4
        numerito = 1
    end

    print numerito 
    numerito = numerito + 1
end

print "\n"