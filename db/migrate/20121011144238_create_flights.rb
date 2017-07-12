class CreateFlights < ActiveRecord::Migration[4.2]
  def change

    create_table :users do |u|
      u.string :name
      u.string :email
      u.string :admin
    end

# TABLA DE UNIÓN (USERS, FlIGHTS)
    create_table :user_flights do |t|
      t.belongs_to :user
      t.belongs_to :flight
    end

    create_table :flights do |f|
      # Completa con las columnas que necesites
      f.string :num_flight
      f.date :date
      f.time :depart
      f.string :from
      f.string :to
      f.time :duration
      f.float :cost
      f.integer :passengers 
    end

# TABLA DE UNIÓN (USERS, BOOKINGS)
    create_table :user_bookings do |t|
      t.belongs_to :user
      t.belongs_to :booking
    end

    create_table :bookings do |b|
      b.belongs_to :flight
      b.integer :num_booking
      b.string :total
    end
  end
end
