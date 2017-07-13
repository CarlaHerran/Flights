require 'pp'
class Controller 
  def initialize(args)
    @view = View.new
    bienvenida
  end

  def bienvenida
    select = @view.bienvenida.to_i
    if select == 1
      input_booking = @view.reservaciones
      start_booking
    elsif select == 2
      puts "Admin"
    elsif select == 3
      puts "miaw"
    else 
      puts "Selecciona una opcion valida"
    end        
  end

  def start_booking
    datos = @view.ingresa_datos
    input_vuelo = @view.muestra_vuelos(datos)
    input_vuelo
    booking(input_vuelo)

    
   end



 
  def booking(input_vuelo)
     input_vuelo.each_with_index do |vuelo, index|
      p vuelo
      p index

     p @view.booking_now(input_vuelo) == index
      
    end

     

     # input_vuelo.each_with_index do |x, index|
     #   user_input = 1
     #   input_vuelo[user_input-1]
     # end
  end




end
