datosHash ={}

datosHash ['Nombre']= 'Celular'
datosHash ['Maria']= '  2248-6559'
datosHash ['Pedro']= '  9845-6532'
datosHash ['Juan']= '   8265-4536'
datosHash ['Alberto']= '7896-4514'

datosHash.each do |nombre,celular|
    puts nombre + "        " + celular
end
puts "Para salir ingrese la letra q"
while true
    puts "\n--------------------"
    puts "Ingrese un nombre"
    nombre_ingresado= gets.chomp.capitalize
    break if nombre_ingresado.downcase == 'q'
    puts "--------------------"

    if datosHash.has_key?(nombre_ingresado)
        puts "El numero celular de #{nombre_ingresado} es #{datosHash[nombre_ingresado]}"
    else
        puts "Nombre no encontrado"
    end
end
puts "Programa Terminado"