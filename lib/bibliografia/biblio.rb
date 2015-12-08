module Bibliografia
     class Biblio
     
          include Comparable
          
          attr_accessor :autor, :titulo, :fecha, :s
          
          #Inicializador
          def initialize(x1,x2,x3)
               
               @nombre=x1
               @fecha=x2
               @titulo=x3
               
          end
          
          def <=>(anOther)
               @nombre <=> anOther.nombre
          end
          
          def == (anOther)
               @titulo == anOther.titulo
          end
          
          def to_s()
               
          end
     
     
     end
     
     class Libro < Biblio
          attr_accessor :edicion, :volumen, :lpublicacion, :editor
          def initialize(x1,x2,x3,x4,x5,x6,x7)
          
               @autor = x1
               @fecha = x2
               @titulo = x3
               @edicion = x4
               @volumen = x5
               @lpublicacion = x6
               @editor = x7
               
          end
          
          def to_s()
            
          end
          
     end
     
     class Articulo < Biblio
          attr_accessor :eds, :titulob, :pags, :edicion, :volumen, :lpublicacion, :editor
          
          def initialize(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)
          
               @autor = x1
               @fecha = x2
               @titulo = x3
               @eds = x4
               @titulob = x5
               @pags = x6
               @edicion = x7
               @volumen =x8
               @lpublicacion = x9
               @editor = x10
               
          end
     end
     
     class ArticuloPeriodico < Biblio
          attr_accessor :periodico, :paginas
          
          def initialize(x1,x2,x3,x4,x5)
          
               @autor = x1
               @fecha = x2
               @titulo = x3
               @periodico = x4
               @paginas = x5
               
          end
     end
     
     class Electronico < Biblio
          attr_accessor :edicion, :tmedio, :lpublicacion, :editor, :url, :fechac
          
          def initialize(x1,x2,x3,x4,x5,x6,x7,x8,x9)
          
               @autor = x1
               @fecha = x2
               @titulo = x3
               @edicion = x4
               @tmedio = x5
               @lpublicacion = x6
               @editor = x7
               @url = x8
               @fechac = x9
               
          end
     end

     
end

 
   