#Método Menú.
def menu(jugador)
    puts "Turno jugador #{jugador}:
        1. Piedra
        2. Papel
        3. Tijera
        4. Salir"
end

#Método Validador.
def validador(opcion, jugador)
    while opcion > 4 || opcion < 1 do
        puts "Opción inválida por favor vuelve a elegir"
        menu(jugador)
        opcion = gets.chomp.to_i
    end
    return opcion
end

#Creación de variables.
menu(1)
opcion_1 = gets.chomp.to_i

#Si jugador 1 no sale del juego.
while opcion_1 != 4 do
    opcion_1 = validador(opcion_1, 1)
    menu(2)
    opcion_2 = gets.chomp.to_i

    #Si jugador 2 no sale del juego.
    while opcion_2 !=4 do
        opcion_2 = validador(opcion_2, 2)

    #Lógica del juego
        case(opcion_1)
        when 1
            puts "Gana jugador 1" if opcion_2 == 3
            puts "Gana jugador 2" if opcion_2 == 2
        when 2
            puts "Gana jugador 1" if opcion_2 == 1
            puts "Gana jugador 2" if opcion_2 == 3
        when 3
            puts "Gana jugador 1" if opcion_2 == 2
            puts "Gana jugador 2" if opcion_2 == 1
        else
            puts "Empate"                         
        end
    break
    end
    break
end