puts "********"
puts "Herencia:"
class Persona
  def initialize (nombre, apellido, email)
    @nombre = nombre
    @apellido = apellido
    @email = email
  end
  attr_reader :nombre, :apellido, :email
end

class Profesor < Persona

end

class Alumno < Persona
  def initialize (curso)
    @curso = curso
  end
  attr_accessor :curso
end

alumno = Alumno.new("Ruby")
puts alumno.inspect
profe = Profesor.new("David", "Pique", "david@mail.com")
puts profe.inspect