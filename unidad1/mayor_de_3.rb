puts "Programa Mayor de 3 - Calcula el mayor de 3 numeros dados (ARGV)"
nh1 =ARGV[0].to_i
nh2 =ARGV[1].to_i
nh3= ARGV[2].to_i

if(nh1 == nh2 and nh1 == nh3)
    puts "los numeros ingresados son todos iguales, por lo tanto no hay uno mayor que otro"
elsif(nh1 > nh2 and nh1 > nh3)
    puts "#{nh1}"
elsif(nh2 > nh1 and nh2 > nh3)
    puts "#{nh2}"
elsif(nh3 > nh1 and nh3 > nh2)    
    puts "#{nh3}"
end