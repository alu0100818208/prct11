require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe Bibliografia do

      @biblio1 = Bibliografia::Biblio.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      @aux1 = Bibliografia::Biblio.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      @aux2 = Bibliografia::Biblio.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      
      describe List::Node do
         nodo1 = List::Node.new(@biblio1,nil)
         
         it "#Existe un Nodo de la lista con sus datos y su siguiente" do
            expect(nodo1.value).to eq(@biblio)
            expect(nodo1.next).to eq(nil)
         end
      
      end
      
      describe List::List do
         
         nodo1 = List::Node.new(@biblio1,nil)
         nodo2 = List::Node.new(@aux1,nil)
         nodo3 = List::Node.new(@aux2,nil)
         vectornodos = []
         vectornodos[0] = nodo2
         vectornodos[1] = nodo3
         
         listita = List::List.new(nodo1);
         
         it "#Se extrae el primer elemento de la lista" do
            expect(listita.extraer_ini()).to eq(nodo1)
         end
         
         it "#Se puede insertar un elemento" do
            listita.insertar_elemento(nodo1)
            expect(listita.ini).to eq(nodo1)
         end
         
         it "#Se pueden insertar varios" do
            listita.insertar_varios(vectornodos)
            expect(listita.ini).to eq(vectornodos[1])
         end
         
      end

     
end