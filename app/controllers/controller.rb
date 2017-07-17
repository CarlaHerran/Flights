require 'pp'
class Controller 
  def initialize(args)
    @view = View.new
    bienvenida
  end

  def bienvenida
    option = @view.login
    user = case option
    when 1 then @view.inicia_sesion
    when 2 then @view.crear_cuenta
    when 3 then @view.gracias
    else
      bienvenida
    end
    @user = inicio(user)
    if @user
      select = @view.bienvenida
      if select == 1
        input_booking = @view.reservaciones
        start_booking
      elsif select == 2
           if @user.admin == true
          crear_vuelo  
             # p "-"*50
             # p @user.admin == "t"
             # p @user.admin == "f"
             # p "-"*50
           else
            puts "Lo sentimos, necesitas una cuenta de administrador"

        end
  

      elsif select == 3
        @view.gracias
      else 
        puts "Selecciona una opcion valida"
      end
    end       
  end

  def start_booking
    datos = @view.ingresa_datos
    input_vuelo = @view.muestra_vuelos(datos)
    @view.booking_now(input_vuelo)
    
   end

   def crear_vuelo
    # determinacion de si el user es admin = true
   
    vuelo = @view.admin
    flight = Flight.create(num_flight: vuelo[:num_flight], date: vuelo[:date], depart: vuelo[:depart], from: vuelo[:from].downcase, to: vuelo[:to].downcase, duration: vuelo[:duration], cost: vuelo[:cost], passengers: vuelo[:passengers])
    if flight
      puts "*" * 30
      puts "Vuelo creado exitosamente!"
      puts "*" * 30
      puts "Flight Number: #{flight.num_flight}"
      puts "Date: #{flight}.date"
      puts "Depart: #{flight.depart}"
      puts "From: #{flight.from}"
      puts "To: #{flight.to}"
      puts "Duration: #{flight.duration}"
      puts "Cost: #{flight.cost}"
      puts "Passengers #{flight.passengers}"
    else
      puts "Error al crear"
      crear_vuelo
    end

  end

  def inicio(data)
    if data.count == 2
      user = User.find_by_email(data[0])
      if user
        if user.password == data[1]
          puts "Bienvenido"
          user
        else
          puts "La contraseña es incorecta, vuelve a intentarlo."
          bienvenida
        end
      else
        puts "No se encontró el usuario"
        bienvenida
      end
    else
      user = User.find_by_email(data[0])
      unless user
        user = User.create(name: data[0], email: data[1] , admin: false, password: data[2])
        if user
          puts "Creado exitosamete"
          user
        else
          puts "Hubo algún error, inténtalo de nuevo"
          bienvenida
        end
      else
        puts "Ya existe este correo"
        bienvenida
      end
    end
  end


end
