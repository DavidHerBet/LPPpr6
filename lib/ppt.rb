# ppt.rb

class PiedraPapelTijeras
  
  def initialize
    @jugadas_posibles = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @tiradas_validas = @jugadas_posibles.keys 
    @resultados = {:gana => "Has ganado la partida", 
                   :pierde => "Has perdido, gana la maquina",
                   :empata => "Ha habido un empate"}
  end
  
  attr_reader :tiradas_validas, :jugadas_posibles, :resultados
  attr_accessor :humano_tira, :maquina_tira, :resultado
  
  def obtener_humano
    return humano_tira if (tiradas_validas.include? (humano_tira))
  end
  
  def obtener_maquina
    return maquina_tira if (tiradas_validas.include? maquina_tira)
  end
  
  def jugar(jugada)
    self.humano_tira = jugada.to_sym
    self.maquina_tira = tiradas_validas.sample
    
    if humano_tira == maquina_tira
      self.resultado = resultados[:empata]
    elsif jugadas_posibles[maquina_tira] == humano_tira
      self.resultado = resultados[:pierde]
    elsif jugadas_posibles[humano_tira] == maquina_tira
      self.resultado = resultados[:gana]
    else
      puts "Ha habido algun error"
    end
    
  end
  
end