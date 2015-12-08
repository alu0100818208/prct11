#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 9." do
      
      describe List::List do 
         
      list = List::List.new(4)
      list.insertar_elemento(5)
      list.insertar_elemento(7)
      list.insertar_elemento(22)
      list.insertar_elemento(3)
      list.insertar_elemento(1)
      list.ordenar()
      
      it "La lista se ordena correctamente." do
         
         expect(list.ini.value).to eq(22)
         expect(list.fin.value).to eq(1)
         
      end
      
      end

      describe Bibliografia::Biblio do
         
         before :all do
            @libro = Bibliografia::Libro.new("Autor, A. A.", 2020, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
            @articulo = Bibliografia::Articulo.new("Autor, A. A.", 2020, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
            @articulop = Bibliografia::ArticuloPeriodico.new("Autor, B. A.", 2004, "CCCC", "Periódico","10")
            @electronico = Bibliografia::Electronico.new("Autor B. B.", 2014,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)
            
            @lista = List::List.new(@libro)
            @lista.insertar_elemento(@electronico)
            @lista.insertar_elemento(@articulop)
            @lista.insertar_elemento(@articulo)
            
         end
            
         it "Orden Alfabético" do
            expect(@lista.ini.value).to eq(@libro)
            expect(@lista.fin.value).to eq(@electronico)
         end
            
      end

     
end