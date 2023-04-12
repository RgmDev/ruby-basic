input = ""
until input == "exit"
  print "C:> "
  input = gets.chomp
  puts "\¿Quieres decir \"#{input}\"\?"
end
puts "Hasta luego"

puts __FILE__
puts File.expand_path(__FILE__)
puts File.dirname(__FILE__)
puts File.join("Me", "invento", "una", "ruta")
puts File.absolute_path(__FILE__)
# Comprobar si existe un directorio
puts File.directory?("/Users")

# Escribir un fichero
my_file = File.new("example.txt", "w")
my_file.puts "Hola Pixel"
my_file.print "Hola Pro\n"
my_file.write "Es muy facil aprender Ruby"
my_file << " Por supuesto, es pixelpro"
my_file.close

# Leer un archivo
puts "********"
puts "Leer un archivo:"
puts "********"
file = File.new("example.txt", "r+")
puts file.read
puts "********"
puts file.pos
file.rewind
puts file.pos
puts file.gets
puts file.eof?
file.close

# Renombrar un archivo
File.rename("example.txt", "example-renombrado.txt")