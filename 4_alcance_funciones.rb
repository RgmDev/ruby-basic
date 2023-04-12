# CONSTANTE CON EL NOMBRE DEL ARCHIVO
puts __FILE__
# ESTRAER LA RUTA ABSOLUTA AL ARCHIVO
$MY_FILE = File.expand_path(File.dirname(__FILE__))
puts $MY_FILE
# MOSTRAR EL NOMBRE DEL ARCHIVO
puts $0
# DIRECTORIO DE INSTALACION DE RUBY
puts $:
# IDENTIFICADOR DEL PROCESO DE EJECUCION
puts $$

array = [1, 2, 3]
array.each {|i| puts i}
# Si intentamos utilizar i fuera del ambito de each mostrara un error
# puts i


puts "********"
puts "Encontrar elementos:"
puts (1..10).find { |i| i == 3}
puts (1..10).detect { |i| i % 2 == 0}
puts (1..10).find_all { |i| i % 5 == 0 }
puts (1..10).any? { |i| i % 2 == 0 }
puts (1..10).all? { |i| i % 2 == 0 }


puts "********"
puts "Merge:"
hash1 = {'David' => 9, 'Dani' => 8}
hash2 = {'Maria' => 9, 'Dani' => 2}
# PRevalece los datos del segundo hash indicado como parametro en la funcion
simple_merge = hash1.merge(hash2)
puts simple_merge
simple_merge = hash2.merge(hash1)
puts simple_merge

# Con esta expresion puede indicar quien prevalece
total_hash = hash1.merge(hash2) {|key, old, new| old}
puts total_hash

# Condicionar que prevalece en cada caso
puts "if_hash #{
  if_hash = hash1.merge(hash2) do |k, o, n|
    if o < n
      n
    else
      o
    end
  end
}"

puts "ruby_hash #{hash1.merge(hash2) {|k, o, n| o > n ? o : n }}"

puts "********"
puts "Map:"
array = [1,2,3]
puts array.map { |i| i * 2 }
puts array.map { |i| i.to_s + " Ok!" }
# Opcion mas correcta para trabajar con string
puts array.map { |i| "#{i} Ok!" }

clase_new = ['dani', 'maria', 'david']
clase_new.each { |alumno| puts alumno.capitalize }
puts clase_new.map { |alumno| alumno.capitalize }
puts clase_new
# Añadiendo la exclamacion guarda el resultado en la misma variable
puts clase_new.map! { |alumno| alumno.capitalize }
puts clase_new

puts "----"
clase_new = ['dani', 'maria', 'david']
puts clase_new.collect { |a| a.capitalize if a == 'david'}
puts clase_new.collect { |a| a == 'david' ? a.capitalize : a}

puts "********"
puts "Ordenar arrays:"
# EL OPERADOR <=> DEVUELVE -1, 0, 1
puts 1 <=> 2
puts 3 <=> 2
puts 1 <=> 1

array = [2, 78, 32, 326, 21, 75]
puts array.sort.join(', ')

alumnos = ['Daniel', 'davidsete', 'María'].sort_by do |x| x.capitalize end
puts alumnos.join(', ')
puts alumnos.sort { |al1, al2| al2 <=> al1 }.join(', ')
puts alumnos.sort_by { |a| a.length }.join(', ')

puts "********"
puts "Inject:"
# Inject sirve para realizar acumulaciones dentro de un rango o array (tipo map o reduce en js)
puts (1..10).inject { |memo, i| memo + i }

array = [*1..10]
sum = array.inject { |memo, i| memo + i }
puts sum

# Se puede inicializar el acumulador
sum2 = array.inject(100) { |memo, i| memo + i }
puts sum2

names = ['david', 'ruben', 'patricia']
longest = names.inject do |memo, i|
  if memo.length > i.length
    memo
  else
    i
  end
end
puts longest

puts "********"
puts "shovel:"

hola = "Hello, "
mundo = "World"

hi = hola
puts hi.object_id
puts hola.object_id

hi << mundo
puts hi
puts hi.object_id
puts hola
puts hola.object_id

original = "foo"
copy = original
copy += "bar"
puts original
puts original.object_id
puts copy
puts copy.object_id

puts "********"
puts "Fibonacci:"
ar = 18.times.inject([0, 1]) do |memo, i|
  memo << memo[-2] + memo[-1]
end
puts ar.join(', ')