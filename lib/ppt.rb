# ppt.rb

class PiedraPapelTijeras
  
  def initialize
    @jugadas_posibles = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @tiradas_validas = @jugadas_posibles.keys 
    @resultados = [:gana, :pierde, :empata]
  end
  
  attr_reader :tiradas_validas, :jugadas_posibles, :resultados, :resultado
  attr_accessor :humano_tira, :maquina_tira
  
  def obtener_humano
    return humano_tira.to_sym if (tiradas_validas.include? (humano_tira.to_sym))
  end
  
  def obtener_maquina
    return maquina_tira if (tiradas_validas.include? maquina_tira)
  end
  
  def jugar
  end
  
end