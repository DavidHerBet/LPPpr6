# ppt_spec.rb

require "rspec"
require "ppt"

describe PiedraPapelTijeras do
  before :each do
    @ppt = PiedraPapelTijeras.new("piedra")
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
  
end