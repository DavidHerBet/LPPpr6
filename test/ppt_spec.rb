# ppt_spec.rb

require "rspec"
require "ppt"

describe PiedraPapelTijeras do
  before :each do
    @ppt = PiedraPapelTijeras.new
  end
  
  it "Debe existir una tirada para el humano" do
    @ppt.respond_to?("humano_tira").should == true
  end
  
  it "Debe existir una tirada para la maquina" do
    @ppt.respond_to?("maquina_tira").should == true
  end
  
  it "Debe existir una lista de tiradas validas" do
    @ppt.respond_to?("tiradas_validas").should == true
    
  end
  
  it "Debe existir una lista de jugadas posibles y quien gana" do
    @ppt.jugadas_posibles.should == {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
  end
  
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
    @ppt.humano_tira = "piedra"
    (@ppt.tiradas_validas.include? @ppt.obtener_humano).should == true
  end
  
  it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
    @ppt.maquina_tira = @ppt.tiradas_validas.sample
    (@ppt.tiradas_validas.include? @ppt.obtener_maquina).should == true
  end
  
  it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
    @ppt.respond_to?("resultados").should == true
    @ppt.resultados.should == [:gana, :pierde, :empata]
  end
  
  it "Debe existir un resultado para un juego, desde el punto de vista de lamaquina" do
    @ppt.respond_to?("resultado").should == true
  end
  
#   it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
#     @ppt.jugar("piedra")
#     
#   end
#   
#   it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
#   end
#   
#   it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
#   end
  
end