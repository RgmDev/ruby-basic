puts "********"
puts "Clases:"

class Alumno
  def set_email(email)
    @email = email
  end
  def get_email
    @email
  end
  # attr_writer sustituye al setter
  attr_writer :nombre
  # attr_reader sustituye al getter
  attr_reader :nombre
  # attr_accessor sustituye a getter y setter
  attr_accessor :tlf
end

ruben = Alumno.new
ruben.set_email("ruben@mail.com")
puts ruben.get_email
ruben.nombre = "Rubén Gonzalez"
puts ruben.nombre
ruben.tlf = "666775544"
puts ruben.tlf

puts "********"
puts "Constructor -> initialize:"
class Coche
  @@coches_alta = []
  def initialize (marca, modelo, color)
    @marca = marca
    @modelo = modelo
    @color = color
    @@coches_alta << self
  end
  attr_reader :marca, :modelo
  attr_accessor :color
  def self.coches_alta
    @@coches_alta
  end
end
coche = Coche.new('Alfa Romeo', '147', 'negro')
puts coche.marca
puts coche.modelo
puts coche.color
coche.color = 'verde'
puts coche.color
coche = Coche.new('Alfa Romeo', '147', 'negro')
coche = Coche.new('BMW', 'M3', 'blanco')
coche = Coche.new('Mercedes', 'C32', 'gris')
puts Coche.coches_alta.inspect