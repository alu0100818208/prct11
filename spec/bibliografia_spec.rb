require "bibliografia/biblio.rb"
require "spec_helper.rb" 

describe Bibliografia do

   before :each do
      @bib1io = Bibliografia.new("JUAN","HOLA","00-00-00","FFFF")
   end

   describe "Libro" do

      it "El nombre del autor es correcto" do
         @bib1o.autor.should eq("JUAN")
      end

      it "El título del libro es correcto" do
         @bib1o.titulo.should eq("HOLA")
      end

      it "La fecha del libro es correcta" do
         @bib1o.fecha.should eq("00-00-00")
      end

      it "ISBN correcto" do
         @bib1o.isbn.should eq("FFFF")
      end
   end

end