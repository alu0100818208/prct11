module List
    
     Node = Struct.new(:value, :next, :prev)
     
     class List
         
        attr_accessor :ini
        
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
        
        def insertar_varios(vector)
            vector.each do |i|
                insertar_elemento(i)
            end
        end
        
        def borrar()
            while @ini!=nil do
                dummy=@ini
                @ini = @ini.next
                dummy=nil
            end
        end
        
        def vacia()
           
           if(@ini == nil)
               return true
           else
               return false
           end
        end
        
        def recorrer_inicio
            vector = []
            aux = @ini
            i = 0
            
            while aux!=nil do
                vector[i]=aux.value
                aux=aux.next
                i=i+1
            end
            
            return vector
        end
        
     end
     
end