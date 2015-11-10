module List
    
     Node = Struct.new(:value, :next)
     
     class List
         
         attr_accessor :ini
        def initialize()
            @ini = nil
        end
        
        def initialize(nodo)
            @ini = nodo
        end
        
        def extraer_ini()
            if (@ini != nil)
                dummy = @ini
                @ini = @ini.next
                return dummy
            else
                return nil
            end
        end
        
        def insertar_elemento(nodo)
            if (@ini == nil)
                @ini = nodo
            else
                aux = @ini
                @ini = nodo
                @ini.next = aux
                
            end
        end
        
     end
end