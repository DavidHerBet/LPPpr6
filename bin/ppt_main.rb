# ppt_main.rb

require "ppt"

tiradas_validas = ["piedra", "papel", "tijeras"]

ppt = PiedraPapelTijeras.new

ppt.jugar(tiradas_validas.sample)

puts "Tu jugada: #{ppt.obtener_humano}"
puts "La jugada de la maquina: #{ppt.obtener_maquina}"
puts "Resultado: #{ppt.resultado}"
