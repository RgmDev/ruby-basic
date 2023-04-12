puts "********"
puts "Definición de funciones:"

def hi
  puts "Hi world"
end
hi

puts "********"
puts "Alcances (scopes):"
puts "Global    $variable"
puts "Clase     @@variable"
puts "Instancia @variable"
puts "Local     variable"
puts "Bloque    variable"

$x = "global"
def cambio
  $x = "Hola mundo"
  puts $x
end
cambio

puts "********"
puts "Funciones con parámetros:"
alumno_1 = "David"
alumno_2 = "Maria"

def deportes (a, b)
  f = "fútbol"
  p = "balonmano"
  "#{a}, practica #{f}\n#{b} practica #{p}"
end
puts "#{deportes(alumno_1, alumno_2)}"

def suma (a = 0, b = 0)
  puts a + b
end
suma 4,6
suma 10,23

puts "********"
puts "Importar paquetes Ruby:"
require "open-uri"
url = "http://www.pixelpro.es"
pattern = "<img"
page = open(url).read
tags = page.scan(pattern)
puts "El sitio web #{url} tiene #{tags.length} etiquetas img"

puts "********"
puts "Abstracción:"
def etiquetas (url, tag)
  pattern = /<#{tag}\b/
  page = open(url).read
  tags = page.scan(pattern)
  puts "El sitio web #{url} tiene #{tags.length} etiquetas #{tag}"
end
etiquetas("http://pixelpro.es", "img")
etiquetas("http://davidpique.com", "div")