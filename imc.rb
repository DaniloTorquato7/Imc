class Imc
    
    attr_accessor :peso, :altura

    def initialize(peso, altura)
        @peso = peso
        @altura = altura
    end

    def calc_imc 
        calculo = peso / (altura* altura)
        
        if calculo > 40
            puts "Seu imc é #{calculo} você está com obesidade grau 3"
        elsif calculo > 30 && calculo <= 39.9
            puts "Seu imc é #{calculo} você está com obesidade grau 2"
        elsif calculo > 25 && calculo <= 29.9
            puts "Seu imc é #{calculo} você está com sobrepeso grau 1"
            elsif calculo > 18.5 && calculo <= 24.9
                puts "Seu imc é #{calculo} seu peso está saudavel"
            else
                puts "Seu imc é #{calculo} você está abaixo do peso ideal"

        end
    end
    
    puts "Digite seu peso:"
    peso = gets.chomp.to_f

    puts "Digite sua altura"
    altura = gets.chomp.to_f


    if peso.positive? && altura.positive?
        pessoa1 = Imc.new(peso, altura)
        pessoa1.calc_imc
    else
        puts "Digite um valor válido para peso e altura!!!"
    end
end

