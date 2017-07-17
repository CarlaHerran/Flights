class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

def login
  puts "1.- Iniciar Sesión"
  puts "2.- Crea tu Cuenta"
  puts "3.- Salir"
  gets.to_i
end


def inicia_sesion
  puts "Introduce tu correo"
  correo = gets.chomp
  puts "Introduce tu contraseña"
  contraseña = gets.chomp
  [correo, contraseña]  
end

def crear_cuenta
  puts "Elige un nombre de usuario"
  nom_user = gets.chomp
  puts "Agrega tu correo"
  correo = gets.chomp
  puts "Elige una contraseña"
  password = gets.chomp
  [nom_user, correo, password]
end

  def bienvenida
    puts "Bienvenido a vuelos codea"
    puts "1.- RESERVACIONES"
    puts "2.- ADMINISTRADOR"
    puts "3.- SALIR"
    gets.to_i
  end

  def reservaciones
    puts "Bienvenido"
    puts "1.- Encuentra tu boleto de avión"
    puts "2.- Salir"
    gets.chomp
  end

  def ingresa_datos
    puts "From:"
    input_from = gets.chomp.downcase 
    puts "To:"
    input_to = gets.chomp.downcase
    puts "Date (YYYY-MM-DD)"
    input_date = gets.chomp
    [input_from,input_to,input_date]
  end


  def muestra_vuelos(vuelos)
      puts "----------------------------------------------------------------------------------------------------------------------------------------------"
      puts "********************************************************* VUELOS DISPONIBLES *****************************************************************"
      puts "----------------------------------------------------------------------------------------------------------------------------------------------"
      # puts "Selecciona tu vuelo:"
      # pp variable
       vuelos
       reservaciones = Flight.where(from: vuelos[0]).where(to: vuelos[1]).where(date: vuelos[2])
    if reservaciones.empty?
      p "No existen vuelos"
    else            
      reservaciones.each_with_index do |res, index|
        puts "    | Número | From   |  To     |     Date     |         Depart            |        Duration           |    Cost   |    Passengers"
        puts "#{index + 1}.- | #{res.num_flight} | #{res.from}  |  #{res.to}  |  #{res.date}  |  #{res.depart}  |  #{res.duration}  |  #{res.cost}  |       #{res.passengers}"
        puts "----------------------------------------------------------------------------------------------------------------------------------------------"
        puts
      end
      reservaciones
      # booking_now
    end
  end



  def booking_now(input_vuelo)  
    p "Selecciona la opción de vuelo para hacer la reservación: "
    input = gets.to_i
    puts "Has escogido tu vuelo!"
    puts "Revisa tu reservación:"
    puts "----------------------------****************** RESERVACIÓN *********************--------------------------"
  
    vuelo = input_vuelo[input-1]

    puts "INFORMACIÓN GENERAL"
    puts "Número de vuelo: #{vuelo.num_flight}"
    puts "Fecha: #{vuelo.date}"
    puts "Salida: #{vuelo.depart}"
    puts "Duration: #{vuelo.duration}"
    puts "Cost: #{vuelo.cost}"
    puts "Passengers: #{vuelo.passengers}"

  end


def admin
  puts "MENU ADMINISTRADOR".center(30,'-')
  puts "CREAR VUELOS"
  puts "Ingresa número de vuelo"
  num_flight = gets.chomp
  puts "Ingresa la fecha"
  date = gets.chomp
  puts "Ingresa hora de salida"
  depart = gets.chomp
  puts "Ingresa el lugar de salida"
  from = gets.chomp
  puts "Ingresa el destino"
  to = gets.chomp
  puts "Ingresa el tiempo de duración del vuelo"
  duration = gets.chomp
  puts "Ingresa el costo del vuelo"
  cost = gets.chomp
  puts "Ingresa el número de pasajeros"
  passengers = gets.chomp
  {num_flight: num_flight, date: date, depart: depart, from: from, to: to, duration: duration, cost: cost, passengers: passengers}
end





def gracias
  puts "GRACIAS"
  exit
end



end
