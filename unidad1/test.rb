password = ARGV[0]
base = "a"
count = 0


while base != password do 
   base = base.next
   count = count + 1
    
end

puts base
puts count