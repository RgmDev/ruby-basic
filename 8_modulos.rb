module Entrenamiento
  DIA = "Lunes"
  def Entrenamiento.fuerza
    puts "Rutina de 4 semana"
    4
  end
  def Entrenamiento.trimestre
    puts "El trimestre tiene 12 semanas"
  end
end

=begin

Para cargar los modulos desde archivos externos, cargar la variable LOAD_PATH con la ruta al directorio donde se encuentra el archivo del modulo y después con la sentencia require

LOAD_PATH << '.'
require "Entrenamiento"

=end

class Socio
  ALTA = true
  def entrenamiento
    puts "El entrenamiento empieza el #{Entrenamiento::DIA}"
    dias = 3 * Entrenamiento::fuerza
    puts "Esta rutina tendrá que seguirla durante #{dias} semanas"
  end
end

carlos = Socio.new
carlos.entrenamiento