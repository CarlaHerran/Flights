class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
    
  def bienvenida
    puts "Bienvenido a vuelos codea"
    puts "1.- RESERVACIONES"
    puts "2.- ADMINISTRADOR"
    puts "3.- SALIR"
    select = gets.chomp
  end

  def reservaciones
    puts "Bienvenido"
    puts "1.- Encuentra tu boleto de avión"
    puts "2.- Salir"
    select = gets.chomp
  end




  def encuentra_vuelo
    puts "Busca tu vuelo"

  end




  def booking
    puts "1.-Booking"
    select = gets.chomp



  end



end
