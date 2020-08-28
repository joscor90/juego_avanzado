#Método Menú
def menu(jugador)
    puts "Turno jugador #{jugador}:
        1. Piedra
        2. Papel
        3. Tijera
        4. Salir"
end

#Método Validador
def validador(jugador, opcion)
    puts "Opcion inválida por favor vuelve a escoger"
    menu(jugador)
    opcion = gets.chomp.to_i
    return opcion
end

#Lógica del juego
menu(1)
opcion_1 = gets.chomp.to_i
if opcion_1 !=4 
    while ((opcion_1 > 4)  || (opcion_1 < 1)) do
        opcion_1 = validador(1, opcion_1)
    end
    if opcion_1 !=4
        menu(2)
        opcion_2 = gets.chomp.to_i
        while ((opcion_2 > 4) || (opcion_2 < 1)) do
            opcion_2 = validador(2, opcion_2)
        end
        if opcion_2 != 4 
            case(opcion_1)
            when 1
                puts "Gana jugador 1" if opcion_2 == 3
                puts "Gana jugador 2" if opcion_2 == 2
                puts "Empate" if opcion_2 == 1
            when 2
                puts "Gana jugador 1" if opcion_2 == 1
                puts "Gana jugador 2" if opcion_2 == 3
                puts "Empate" if opcion_2 == 2
            when 3
                puts "Gana jugador 1" if opcion_2 == 2
                puts "Gana jugador 2" if opcion_2 == 1
                puts "Empate" if opcion_2 == 3
            end

        end

    end
end


