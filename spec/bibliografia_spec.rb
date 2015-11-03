require "bibliografia/biblio.rb"
require "spec_helper.rb" 

describe Bibliografia do

   before :each do
      @biblio = Bibliografia.new("JUAN")
   end

   describe "Libro" do

      it "El nombre del autor es incorrecto" do
         @biblio.autor.should eq("JUAN")
      end
   end

end