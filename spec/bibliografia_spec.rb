#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 9." do

      describe "Bibliografia" do
         
         before :all do
            @libro = Bibliografia::Libro.new("Autor, A. A.", 2020, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
            @articulo = Bibliografia::Articulo.new("Autor, B. A.", 2020, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
            @articulop = Bibliografia::ArticuloPeriodico.new("Autor, C. A.", 2004, "CCCC", "Periódico","10")
            @electronico = Bibliografia::Electronico.new("Autor, D. B.", 2014,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)

            
            @lista = List::List.new(@libro)
            @lista.insertar_elemento(@electronico)
            @lista.insertar_elemento(@articulop)
            @lista.insertar_elemento(@articulo)
            @lista.ordenar()
            
            @libro2 = Bibliografia::Libro.new("Autor, A. A.", 1992, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
            @articulo2 = Bibliografia::Articulo.new("Autor, A. A.", 2070, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
            @articulop2 = Bibliografia::ArticuloPeriodico.new("Autor, A. A.", 2004, "CCCC", "Periódico","10")
            @electronico2 = Bibliografia::Electronico.new("Autor, A. A.", 2050,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)

            
            @lista2 = List::List.new(@libro2)
            @lista2.insertar_elemento(@electronico2)
            @lista2.insertar_elemento(@articulop2)
            @lista2.insertar_elemento(@articulo2)
            @lista2.ordenar()
            
            
            
         end
            
         it "Orden Alfabético por apellidos" do
            expect(@lista.ini.value).to eq(@libro)
            expect(@lista.fin.value).to eq(@electronico)
         end
            
         it "Orden por año en caso de coincidencia del autor" do
            
            expect(@lista2.ini.value.fecha).to eq(@libro2.fecha)
            expect(@lista2.fin.value.fecha).to eq(@articulo2.fecha)
            
         end
      end

     
end