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
     end
end