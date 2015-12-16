module List
    
    Node = Struct.new(:value, :next, :prev)
     
    class List
         
        include Enumerable
         
        attr_accessor :ini, :fin
        
        def initialize(valor)
            nodo = Node.new(valor,nil,nil)
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
            nodo = Node.new(valor,nil,nil)
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
        
        def each
            
            dummy = @ini
            
            if(@ini==nil and @fin==nil)
                
                yield nil
                
            elsif (@ini==@fin)
            
                yield @ini.value
            
            else
                
                while(dummy != nil)
                
                    yield dummy.value
                    dummy = dummy.next
                    
                end
            end
            
        end
        
        def ordenar()
            
            auxfin = @fin
            
            while (auxfin!=@ini)
            
                aux = @ini
                
                while (aux!=auxfin)
                    
                    if (aux.value>aux.next.value)
                        dummy = aux.value
                        aux.value = aux.next.value
                        aux.next.value = dummy
                    end
                    
                    aux = aux.next
                    
                end
                
                auxfin = auxfin.prev
            
            end
            
        end
        
        
        def to_s()
            
            vec_list = []
            aux1= 0
            aux2=@ini
            
            while(aux2 != nil)
            
               vec_list1= aux2.value.to_s()
               
               vec_list[aux1]= vec_list1
               
                aux2= aux2.next
                aux1 += 1
            end
            vec_list
        end
        
    end
     
     
end