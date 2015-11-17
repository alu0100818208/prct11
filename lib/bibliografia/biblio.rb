module Bibliografia
     class Biblio

          attr_accessor :autor, :titulo, :fecha, :salida
          
          #Inicializador
          def initialize(x1,x2,x3)
               @autor=x1
               @titulo=x2
               @fecha=x3
          end
          
          def to_s()
               
          end
     
     
     end
     
     class Libro < Biblio
          attr_accessor  :serie, :editorial, :no_edicion, :isbn
          def initialize(x1,x2,x3,x4,x5,x6,x7)
          
               @titulo = x2
               @autor = x1
               @serie = x3
               @editorial = x4
               @no_edicion = x5
               @fecha = x6
               @isbn = x7
               
          end
          
          def to_s()
             @salida = "AUTOR/ES: " + "#{@autor}" + "\n" + "TITULO: " + "#{@titulo}" + "\n" + "SERIE:: " + "#{@serie}" + "\n" + "EDITORIAL: " + "#{@editorial}" + "\n" + "Numero de Edicion: " + "#{@no_edicion}" + "\n" + "FECHA: " + "#{@fecha}" + "\n" + "ISBN: " + "#{@isbn}" 
             
              puts @salida
          end
          
     end

     
end

 
   