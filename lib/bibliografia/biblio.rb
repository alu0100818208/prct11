class Bibliografia

     attr_accessor  :autor, :titulo, :serie, :editorial, :no_edicion, :fecha
     
     #Inicializador
     def initialize(x1,x2,x3,x4,x5,x6)
     
          @titulo = x2
          @autor = x1
          @serie = x3
          @editorial = x4
          @no_edicion = x5
          @fecha = x6
          
     end
     
end