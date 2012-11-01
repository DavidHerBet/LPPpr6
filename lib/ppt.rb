# ppt.rb

class PiedraPapelTijeras
  
  def initialize
    @tiradas_validas = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @tiradas_validas.keys 
  end
  
  attr_reader :maquina_tira, :tiradas_validas, :jugadas, :resultado
  attr_accessor :humano_tira
  
  def obtener_humano
    return humano_tira.to_sym if (jugadas.include? (humano_tira.to_sym))
  end
  
end