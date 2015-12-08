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
            
            
            
            @libro3 = Bibliografia::Libro.new("Autor, A. A. & Autor B. B.", 1992, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
            @articulo3 = Bibliografia::Articulo.new("Autor, A. A. & Autor C. C.", 2070, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
            @articulop3 = Bibliografia::ArticuloPeriodico.new("Autor, A. A.", 2004, "CCCC", "Periódico","10")
            @electronico3 = Bibliografia::Electronico.new("Autor, B. A.", 2050,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)

            @lista3 = List::List.new(@libro3)
            @lista3.insertar_elemento(@electronico3)
            @lista3.insertar_elemento(@articulop3)
            @lista3.insertar_elemento(@articulo3)
            @lista3.ordenar()
            
            
            @libro4 = Bibliografia::Libro.new("Autor, A. A.", 2070, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
            @articulo4 = Bibliografia::Articulo.new("Autor, A. A.", 2070, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
            @articulop4 = Bibliografia::ArticuloPeriodico.new("Autor, A. A.", 2070, "CCCC", "Periódico","10")
            @electronico4 = Bibliografia::Electronico.new("Autor, A. A.", 2070,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)

            @lista4 = List::List.new(@libro4)
            @lista4.insertar_elemento(@electronico4)
            @lista4.insertar_elemento(@articulop4)
            @lista4.insertar_elemento(@articulo4)
            @lista4.ordenar()
            
         end
            
         it "Orden Alfabético por apellidos" do
            expect(@lista.ini.value).to eq(@libro)
            expect(@lista.fin.value).to eq(@electronico)
         end
            
         it "Orden por año en caso de coincidencia del autor" do
            
            expect(@lista2.ini.value.fecha).to eq(@libro2.fecha)
            expect(@lista2.fin.value.fecha).to eq(@articulo2.fecha)
            
         end
         
         it "Orden por autores individuales" do
            
            expect(@lista3.ini.value).to eq(@articulop3)
            expect(@lista3.fin.value).to eq(@electronico3)
            
         end
         
         it "Orden por titulo en caso de coincidencia de autor y año" do
            
            expect(@lista4.ini.value).to eq(@libro4)
            expect(@lista4.fin.value.titulo).to eq(@electronico4.titulo)
            
         end
      end

     
end