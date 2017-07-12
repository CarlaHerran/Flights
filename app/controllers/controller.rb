require 'pp'
class Controller 
  def initialize(args)
    @view = View.new
    bienvenida
  end

def bienvenida
  select = @view.bienvenida.to_i
  if select == 1
    reservaciones = Booking.all
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
  puts "From:"
  input_from = gets.chomp.downcase
   input_from
  puts "To:"
  input_to = gets.chomp.downcase
   input_to
  puts "Date (YYYY-MM-DD)"
  input_date = gets.chomp
   input_date
  variable = Flight.find_by(from: input_from, to: input_to, date: input_date)
  if variable != nil
  puts "***** VUELOS DISPONIBLES *****"
  puts "Selecciona tu vuelo:"
    pp variable
  else
    p "No existen vuelos"
  end



  select = @view.booking.to_i
  if select == 1
    reservaciones = Booking.each_with_index
    # input_booking = @view.booking
    @view.booking

  elsif select == 2
    puts "Ya no se que hacer"

  elsif select == 3
    puts "Me voy a morir"
  else 
    puts "Selecciona una opción válida porfas"
  end    

      
    
end









end
