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
    @ppt.jugadas.should == [:piedra, :papel, :tijeras]
    @ppt.respond_to?("resultado").should == true
  end
  
  it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
    @ppt.humano_tira = "piedra"
    (@ppt.jugadas.include? @ppt.obtener_humano).should == true
  end
  
end