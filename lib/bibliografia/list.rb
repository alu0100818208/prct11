module List
    
     Node = Struct.new(:value, :next, :prev)
     
     class List
         
        attr_accessor :ini, :fin
        
        def initialize(valor)
            nodo = List::Node.new(valor,nil,nil)
            @ini = nodo
            @fin = nodo
        end
        
        def extraer_ini()
            if (@ini != nil)
                
                dummy = @ini
                if(@ini==@fin)
                    @fin=@fin.next
                end
                @ini = @ini.next
                return dummy
            else
                return nil
            end
        end
        
        def insertar_elemento(valor)
            nodo = List::Node.new(valor,nil,nil)
            if (@ini == nil)
                @ini = nodo
                @fin = nodo
            elsif (@ini==@fin)
                @ini=nodo
                @ini.next = @fin
                @fin.prev = @ini
            else
                aux = @ini
                @ini = nodo
                @ini.next = aux
                aux.prev = @ini
                
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
                if(@ini==nil)
                    @fin=nil
                end
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
        
        def recorrer_final
            vector = []
            aux = @fin
            i = 0
            
            while aux!=nil do
                vector[i]=aux.value
                aux=aux.prev
                i=i+1
            end
            
            return vector
        end
        
     end
     
end