  
def nota_mas_alta (alumno)
    info_alumno = alumno.split(",")
    nombre_alumno = info_alumno[0]
    info_alumno.delete(nombre_alumno)

    nota_maxima = 0
    info_alumno.each do |nota|
        if nota.to_i > nota_maxima
            nota_maxima = nota.to_i
        end  
    end    
    puts "nota_mas_alta " + nombre_alumno + " => " + nota_maxima.to_s    
end

file_notas = File.open "notas.data"
alumnos = file_notas.readlines

alumnos.each do |alumno|
    nota_mas_alta(alumno.chomp) 
end