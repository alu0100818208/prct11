require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe Bibliografia do

      @biblio1 = Bibliografia::Biblio.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      
      
      
      describe List::Node do
         nodo1 = List::Node.new(@biblio1,nil)
         
         it "#Existe un Nodo de la lista con sus datos y su siguiente" do
            expect(nodo1.value).to eq(@biblio)
            expect(nodo1.next).to eq(nil)
         end
      
      end
      
      describe List::List do
         
         nodo1 = List::Node.new(@biblio1,nil)
         list = List::List.new(nodo1);
         
         it "#Se extrae el primer elemento de la lista" do
            
            expect(list.ini.value).to eq(nil)
            expect(list.ini.next).to eq(nil)
         end
         
      end

     
end