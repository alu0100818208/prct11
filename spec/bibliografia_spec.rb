require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe Bibliografia do

      @biblio1 = Bibliografia::Libro.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      @aux1 = Bibliografia::Libro.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
      @aux2 = Bibliografia::Libro.new("Scott Chacon", "Pro Git 2009th Edition", "(Pro)", "Apress", "2009 edition", "(August 27, 2009)",[ "ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])


      describe List::Node do
         nodo1 = List::Node.new(@biblio1,nil,nil)
         
         it "#Existe un Nodo de la lista con sus datos, su siguiente y su anterior" do
            expect(nodo1.value).to eq(@biblio)
            expect(nodo1.next).to eq(nil)
            expect(nodo1.prev).to eq(nil)
         end
         
      
      end
      
      describe List::List do
         
         nodo1 = List::Node.new(@biblio1,nil)
         nodo2 = List::Node.new(@aux1,nil)
         nodo3 = List::Node.new(@aux2,nil)
         vectornodos = []
         vectornodos[0] = nodo2
         vectornodos[1] = nodo3
         
         listita = List::List.new(nodo1)
         
         it "#Existe una Lista con su cabeza y su cola" do
            expect(listita.ini).not_to eq(nil)
            expect(listita.fin).not_to eq(nil)
         end
         
         context "Recorremos la lista" do
            
            nodoaux1 = List::Node.new(1,nil)
            nodoaux2 = List::Node.new(2,nil)
            nodoaux3 = List::Node.new(3,nil)
            
            nodos_vectorH = []
            nodos_vectorH[0] = 3
            nodos_vectorH[1] = 2
            nodos_vectorH[2] = 1
            
            nodos_vectorT = []
            nodos_vectorT[0] = 1
            nodos_vectorT[1] = 2
            nodos_vectorT[2] = 3
            
            lista0 = List::List.new(nodoaux1)
            lista0.insertar_elemento(nodoaux2)
            lista0.insertar_elemento(nodoaux3)
            
            
             it "#Se puede recorrer la lista desde la cabeza hasta la cola" do
                expect(lista0.recorrer_inicio).to eq(nodos_vectorH)
             end
             
             it "#Se puede recorrer la lista desde la cola hasta la cabeza" do
                expect(lista0.recorrer_final).to eq(nodos_vectorT)
             end
             
             
         end
         
      end
      
      describe Bibliografia::Biblio do
         
         context "Libros" do
            libroaux = Bibliografia::Libro.new("Richard E. Silverman", "Git Pocket Guide",nil, "O’Reilly Media", "1 edition", "(August 2, 2013)", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
            
            it "#Comprobamos que el libro pertenece a la clase Libro" do
               expect(libroaux).to be_instance_of(Bibliografia::Libro)
            end
            
            it "#Comprobamos que el libro pertenece a la jerarquía de Biblio" do
               expect(libroaux).to be_kind_of(Bibliografia::Biblio)
            end
            
         end
         
          context "Publicaciones" do
            libroaux = Bibliografia::Publicacion.new("Macame Mesa", "Ni más plazos, ni prórrogas, ni \"prisas\" para la asignación eólica en Canarias","eldiario.es","16/11/2015","Arículo de periódico.","http://www.eldiario.es/canariasahora/energia/prorrogas-prisas-asignacion-eolica-Canarias_0_452855449.html")
            
            it "#Comprobamos que la publicación pertenece a la clase Publicacion" do
               expect(libroaux).to be_instance_of(Bibliografia::Publicacion)
            end
            
            it "#Comprobamos que la publicacion pertenece a la jerarquía de Biblio" do
               expect(libroaux).to be_kind_of(Bibliografia::Biblio)
            end
            
         end
   
      end
      
end