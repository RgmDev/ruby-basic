# Variables basic
puts "Basic:"
x = 2
x += 4
puts x

# Números
puts "*********"
puts "Numeros:"
x = 1
puts x
puts x.class
puts x.next
puts "*********"
y = 3.2
puts y
puts y.class
puts "*********"
# Para obtener decimales, indicar uno de los valores con al menos un decimal
x = 10/3.0
puts x
# Redondeos
puts "*********"
x = 123.654
puts x.round
puts x.to_i
puts x.floor
puts x.ceil
x = -100
puts x.abs
puts "*********"

# Cadenas de texto
puts "String:"
a_quien = "Ruben"
saludo = "Hola"
puts saludo + " " + a_quien
x = "texto \"\" con comillas"
puts x
x = "texto \n con salto de linea"
puts x
x = "texto \t con tabulacion"
puts x
x = "\"I have a dream\""
puts "Alguien dijo: #{x}"
x = "frase de ejemplo"
puts x
puts x.class
puts x.length
puts x.capitalize
puts x.reverse
puts x.reverse.capitalize
puts x.downcase
puts x.upcase

# Ejecución de comandos en el SO
puts "*********"
puts "Ejecución de comandos en el sistema operativo:"
puts `ls`

# Arrays
puts "*********"
puts "Array:"
cita = "verde"
mi_array = ['azul', 'rojo', cita]
puts mi_array[2]
mi_array << "morado"
puts mi_array
puts mi_array.length
mi_array.clear
puts mi_array
mi_array = Array.new(3)
puts mi_array
mi_array = Array.new(3, "hola")
puts mi_array

# Hashes (Objetos/Array asociativo)
puts "*********"
puts "Hashes:"
ruidos = {'perro' => 'guuau', 'gato' => 'miauuu', 'leon' => 'roarr'}
puts ruidos['perro']
puts ruidos.length
puts ruidos.key('roarr')
ruidos['leon'] = 'Grorar'
puts ruidos
ruidos.clear
puts ruidos
ruidos = {'perro' => 'guuau', 'gato' => 'miauuu', 'leon' => 'roarr'}
ruidos.each {|key, value| puts "El #{key} hace #{value}"}

# Simbolos
puts "*********"
puts "Simbolos:"
# Si es cadema de texto devolvera un id distinto cada vez, si es simbolo lo mantiene ahorrando memoria
puts "hola".object_id
puts "hola".object_id
puts "hola".object_id
puts :hola.object_id
puts :hola.object_id
# __id__ = object_id
puts :hola.__id__
# Cambio entre tipos
x = :hola
puts :hola.to_s
x = "hola"
puts x.to_sym

var1 = :hola
var2 = :hola
puts var1.__id__
puts var2.__id__

# Boolean
puts "*********"
puts "Boolean:"
animals = ["perro", "gato", "loro"]
puts animals.include?("perro")
sounds = {:guau => "perro", :meow => "gato", :roar => "leon"}
puts sounds.has_key?(:roar)

# Rangos
puts "*********"
puts "Rangos:"
x = 1..10
puts x.class
# Rango inclusivo
x = 1..3
puts x.to_a
# Rango exclusivo
x = 1...3
puts x.to_a
letras = "a".."f"
puts letras.to_a

# Constantes
# Se permite cambiar el valor de las constantes pero mostrará una alerta
puts "*********"
puts "Constantes:"
SALUDO = "hola"
puts SALUDO
SALUDO = "otra cosa"
puts SALUDO