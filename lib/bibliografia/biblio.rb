
class Biblio

     include Comparable
     attr_accessor :titulo, :autor, :fecha
     
     def initialize(title, &block)
     
          self.titulo = title
          self.autor = []
          self.fecha = []
     
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
     end
     
     def date(name, options = {})
          date = name
          
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          autor << author
     end
     
     def <=>(anOther)
          if((@autor <=> anOther.autor) == 0)
               if((@fecha <=> anOther.fecha)==0)
                    
                    @titulo <=> anOther.titulo
                
               else
                    @fecha <=> anOther.fecha
               end
          else
               @autor <=> anOther.autor
          end
     end
     
     
     def to_s()

     end
     
     
end

class Libro < Biblio
     
     attr_accessor :edicion, :volumen, :lpublicacion, :edito
     
     def initialize(title,&block)
         
          self.titulo = title
          self.autor = []
          self.fecha = []
          self.edicion = []
          self.volumen = []
          self.lpublicacion = []
          self.edito = []
          
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
          
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          autor << author
     end
     
     def edition(name, options = {})
          edition = name
          edicion << edition
     end
     
     def volume(name, options = {})
          volume = name
          volumen << volume
     end
     
     def place(name, options = {})
          place = name
          lpublicacion << place
     end
     
     def editor(name, options = {})
          editor = name
          edito << editor
     end
     
     def to_s()
          
          out = "#{titulo}"
          out << " #{autor.join(', ')} "
          out << "(#{fecha.join(', ')}) "
          out << "(#{edicion.join(', ')}) "
          out << "(#{volumen.join(', ')}) "
          out << "#{lpublicacion.join(', ')} "
          out << "#{edito.join(', ')} "
          
          out
     end
     
end

class Articulo < Biblio

     attr_accessor :eds, :titulob, :pags, :edicion, :volumen, :lpublicacion, :edito
     def initialize(title,&block)
     
          self.titulo = title
          self.autor = []
          self.fecha = []   
          self.titulob = []
          self.pags = []
          self.edicion = []
          self.volumen = []
          self.lpublicacion = []
          self.edito = []
          
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
          
          
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          autor << author
     end
     
     def edition(name, options = {})
          edition = name
          edicion << edition
     end
     
     def pages(name, options = {})
          pages = name
          pags << pages
     end
     
     def book(name, options = {})
          book = name
          titulob << book
     end
     
     def volume(name, options = {})
          volume = name
          volumen << volume
     end
     
     def place(name, options = {})
          place = name
          lpublicacion << place
     end
     
     def editor(name, options = {})
          editor = name
          edito << editor
     end
     
     def to_s()
          
          out = "#{titulo}"
          out << " #{autor.join(', ')} "
          out << "(#{fecha.join(', ')}) "
          out << " #{titulob.join(', ')} "
          out << " #{pags.join(', ')} "
          out << "(#{edicion.join(', ')}) "
          out << "(#{volumen.join(', ')}) "
          out << "#{lpublicacion.join(', ')} "
          out << "#{edito.join(', ')} "
          
          out
     end
     
end

class ArticuloPeriodico < Biblio
     attr_accessor :periodico, :paginas
          
     def initialize(title, &block)
          
          self.autor = []
          self.fecha = []
          self.titulo = title
          self.periodico = []
          self.paginas = []
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
          
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          autor << author
     end
     
     def journal(name, options = {})
          journal = name
          periodico << journal
     end
     
     def pages(name, options = {})
          pages = name
          paginas << pages
     end
     
     def to_s()
          
          out = "#{titulo}"
          out << " #{autor.join(', ')} "
          out << "(#{fecha.join(', ')}) "
          out << "(#{paginas.join(', ')})"
          out << "(#{periodico.join(', ')})"
          
          out
     end
end

class Electronico < Biblio
     attr_accessor :edicion, :tmedio, :lpublicacion, :editor, :dir
          
     def initialize(title, &block)
          
          self.autor = []
          self.fecha = []
          self.titulo = title
          self.edicion = []
          self.tmedio = []
          self.lpublicacion = []
          self.dir = []
          
          if block_given?  
               if block.arity == 1
                    yield self
               else
                    instance_eval &block 
               end
          end
               
     end
     
     def date(name, options = {})
          date = name
          fecha << date
     end
     
     def author(name, options = {})
          author = name
          autor << author
     end
     
     def edition(name, options = {})
          edition = name
          edicion << edition
     end
     
     def type(name, options = {})
          type = name
          tmedio << type
     end
     
     def url(name, options = {})
          url = name
          dir << url
     end
     
     def place(name, options = {})
          place = name
          lpublicacion << place
     end
     
     def to_s()
          
          out = "#{titulo}"
          out << " #{autor.join(', ')} "
          out << "(#{fecha.join(', ')}) "
          out << "(#{edicion.join(', ')}) "
          out << "(#{tmedio.join(', ')}) "
          out << "#{lpublicacion.join(', ')} "
          out << "(#{dir.join(', ')})"
          
          out
          
     end
     
end