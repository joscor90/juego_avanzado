def menu(jugador)
    puts "Turno jugador #{jugador}:
        1. Piedra
        2. Papel
        3. Tijera
        4. Salir"
end

def validador(opcion, jugador)
    while opcion > 4 || opcion < 1 do
        puts "Opción inválida por favor vuelve a elegir"
        menu(jugador)
        opcion = gets.chomp.to_i
    end
    return opcion
end

menu(1)
opcion_1 = gets.chomp.to_i
opcion_1 = validador(opcion_1, 1)

