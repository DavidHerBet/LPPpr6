# ppt.rb

class PiedraPapelTijeras
  
  def initialize
    @tiradas_validas = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @tiradas_validas.keys 
  end
  
  attr_reader :humano_tira, :maquina_tira, :tiradas_validas, :jugadas, :resultado
  
end