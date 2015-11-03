class Bibliografia

     attr_accessor  :autor, :titulo, :serie, :editorial, :no_edicion, :fecha, :isbn
     
     #Inicializador
     def initialize(x1,x2,x3,x4,x5,x6,x7)
     
          @titulo = x2
          @autor = x1
          @serie = x3
          @editorial = x4
          @no_edicion = x5
          @fecha = x6
          @isbn = x7
          
     end
     
end