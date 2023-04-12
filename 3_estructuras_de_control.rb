# IF / ELSE
puts "if - elsif - else:"
dia = "mañana"
if dia == "tarde"
  puts "Es tarde"
elsif dia == "mañana"
  puts "ES mañana"
else
  puts "No es tarde, ni mañana"
end

# Condicionar una salida por pantalla
dia = "tarde"
puts "Buenas tardes" if dia == "tarde"

puts "********"
puts "unless:"
x = 10
unless x == 10
  puts "No es 10"
else
  puts "Es 10"
end

puts "********"
puts "switch:"
grade = "A"
case grade
  when "A"
    puts "Perfecto"
  when "B"
    puts "Muy bien, aun puedes mejorar"
  when "C"
    puts "No es suficiente"
  else
    puts "Pide cita al profe"
end

# While
puts "********"
puts "while:"
x = 0
y = 2
while x < y do
  puts "Hola Ruby!"
  x += 1
end

# For
puts "********"
puts "for:"
x = 0
for x in 1..10 do
  puts "Esta es la iteracion #{x}"
end

# Each
puts "********"
puts "each:"
1.upto(5) do |x|
  puts "Hola Ruby #{x}"
end

animal = ["perro", "gato", "cerdo"]
animal.each do |i|
  puts i
  break if i == "gato"
  # redo repite la estructura
  # redo if i == "gato"
end