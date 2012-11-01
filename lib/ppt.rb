# ppt.rb

class PiedraPapelTijeras
  
  def initialize
    @tiradas_validas = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @tiradas_validas.keys 
  end
  
  attr_reader :tiradas_validas, :jugadas, :resultado
  attr_accessor :humano_tira, :maquina_tira
  
  def obtener_humano
    return humano_tira.to_sym if (jugadas.include? (humano_tira.to_sym))
  end
  
  def obtener_maquina
    return maquina_tira if (jugadas.include? maquina_tira)
  end
  
end