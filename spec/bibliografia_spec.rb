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
         
         it "#Existe una Lista con su cabeza" do
            expect(listita.ini).to eq(vectornodos[1])
         end
         
         it "#Se puede borrar la lista" do
            listita.borrar()
            expect(listita.ini).to eq(nil)
         end
         
         it "#Se puede comprobar que la lista está vacía" do
            expect(listita.vacia).to eq(true)
         end
         
      end
      
      describe Bibliografia::Biblio do
         
         libro1 = Bibliografia::Biblio.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
         libro2 = Bibliografia::Biblio.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0","(The Facets of Ruby)","Pragmatic Bookshelf", "4 Edicion", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10:1937785491"])
         libro3 = Bibliografia::Biblio.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language",nil, "O’Reilly Media", "1 edition", "(February 4, 2008)", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
         libro4 = Bibliografia::Biblio.new(["David Chelimsky", "Dave Astels", "Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "(December 25, 2010)", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371"])
         libro5 = Bibliografia::Biblio.new("Richard E. Silverman", "Git Pocket Guide",nil, "O’Reilly Media", "1 edition", "(August 2, 2013)", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
         
         
         vnodos = []
         vnodos[0] = List::Node.new(libro2,nil)
         vnodos[1] = List::Node.new(libro3,nil)
         vnodos[2] = List::Node.new(libro4,nil)
         vnodos[3] = List::Node.new(libro5,nil)
         vnodosaux = List::Node.new(libro1,nil)
         
         listita = List::List.new(@vnodosaux);
         
          it "#Insertamos todas las referencias de libros" do
            listita.insertar_varios(vnodos)
            expect(listita.ini).to eq(vnodos[3])
         end
      end

     
end