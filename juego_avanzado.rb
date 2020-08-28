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
