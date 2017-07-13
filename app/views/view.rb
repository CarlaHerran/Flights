class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
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

  def ingresa_datos
    datos=[]
    puts "From:"
    input_from = gets.chomp.downcase 
    puts "To:"
    input_to = gets.chomp.downcase
    puts "Date (YYYY-MM-DD)"
    input_date = gets.chomp
    datos=[input_from,input_to,input_date]
  end


  def muestra_vuelos(vuelos)
    if vuelos.count != 0
      puts "----------------------------------------------------------------------------------------------------------------------------------------------"
      puts "********************************************************* VUELOS DISPONIBLES *****************************************************************"
      puts "----------------------------------------------------------------------------------------------------------------------------------------------"
      # puts "Selecciona tu vuelo:"
        # pp variable
      reservaciones = Flight.where(from: vuelos[0]).where(to: vuelos[1]).where(date: vuelos[2])
      reservaciones.each_with_index do |res, index|
        puts "    | Número | From   |  To     |     Date     |         Depart            |        Duration           |    Cost   |    Passengers"
        puts "#{index + 1}.- | #{res.num_flight} | #{res.from}  |  #{res.to}  |  #{res.date}  |  #{res.depart}  |  #{res.duration}  |  #{res.cost}  |       #{res.passengers}"
        puts "----------------------------------------------------------------------------------------------------------------------------------------------"
        puts
      end
      reservaciones
      # booking_now
    else            
      p "No existen vuelos"
    end
  end



  def booking_now(input_vuelo)  
    p "Selecciona la opción de vuelo para hacer la reservación: "
    input = gets.to_i
    puts "Has escogido tu vuelo!"
    puts "Revisa tu reservación:"
    puts "----------------------------****************** RESERVACIÓN *********************--------------------------"
  
    


  end





end
