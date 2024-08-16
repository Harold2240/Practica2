class Calcular

    def initialize(numero)
        @numero= numero
    end

    def suma_par
        sum=0
        @numero.to_s.each_char do |res|
            digito= res.to_i
            sum+= digito if digito.even?
        end
        sum
    end

    def suma_impar
        sum=0
        @numero.to_s.each_char do |res|
            digito= res.to_i
            sum+= digito if digito.odd?
        end
        sum
    end
end
puts "Introduce un numero: "
numero= gets.chomp.to_i

calculador= Calcular.new (numero)

puts "La suma de los numeros pares fue de: #{calculador.suma_par}"
puts "La suma de los numeros impares fue de: #{calculador.suma_impar}"

