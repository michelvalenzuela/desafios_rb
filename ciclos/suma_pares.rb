  
n = ARGV[0].to_i
par = 2
suma = 0 

n.times do |i|
    suma = suma + par
    par = par + 2 
end

puts suma