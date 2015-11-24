require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 9." do

   describe Bibliografia::Biblio do
      
      describe "#Comparable." do
      
      before :all do
         @articulo2 = Bibliografia::Publicacion.new("Raul Rejón", "Las emisiones de CO2 vuelven a subir en España por primera vez desde la crisis", "eldiario.es","23/11/2015", "Artículo de Periódico", "http://www.eldiario.es/sociedad/Espana-aumenta-emisiones-invernadero-Europa_0_455305070.html")
         @articulo1 = Bibliografia::Publicacion.new("Iván Suárez", "Los rescatadores canarios, obligados a saltar al mar sin enganche ante la ausencia de grúas en los helicópteros", "eldiario.es", "24/11/2015", "Artículo de Periódico", "http://www.eldiario.es/canariasahora/sociedad/rescatadores-Canarias-salto-mar-gruas-helicopteros_0_455654439.html")
         
      end
      
      it "articulo2 < articulo1" do
         expect(@articulo2 < @articulo1).to eq(true)
      end
      
      it "articulo2 <= articulo1" do
         expect(@articulo2 <= @articulo1).to eq(true)
      end
      
       it " articulo1 > articulo2" do
         expect(@articulo1 > @articulo2).to eq(true)
      end
      
      it "articulo1 >= articulo2" do
         expect(@articulo1 >= @articulo2).to eq(true)
      end
      
      it "articulo1 == articulo1" do
         expect(@articulo1 == @articulo1).to eq(true)
      end

      it "articulo1 != articulo2" do
         expect(@articulo1 == @articulo2).to eq(false)
      end
      
   end
      
      
   end
   
     
end