n = ARGV[0].to_i
asterisco = true
caracter = "*"

n.times do |i|
  if asterisco == true
    caracter = "*"
  else
    caracter = "."
  end
  
  if (i + 1).even? 
    asterisco = !asterisco
  end
  
  print caracter
end

print "\n"