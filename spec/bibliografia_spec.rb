#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Practica 9." do

   describe Bibliografia::Biblio do
      
      describe "#Comparable." do
      
         before :all do
            @articulo2 = Bibliografia::Publicacion.new("Raul Rejon", "Las emisiones de CO2 vuelven a subir en España por primera vez desde la crisis", "eldiario.es","23/11/2015", "Articulo de Periodico")
            @articulo1 = Bibliografia::Publicacion.new("Ivan Suarez", "Los rescatadores canarios, obligados a saltar al mar sin enganche ante la ausencia de grúas en los helicopteros", "eldiario.es", "24/11/2015", "Articulo de Periodico",)
            
         end
         
         it "articulo2 < articulo1" do
            expect(@articulo2 < @articulo1).to eq(true)
         end
         
         it "articulo2 <= articulo1" do
            expect(@articulo2 <= @articulo1).to eq(true)
         end
         
          it " articulo1 > articulo2" do
            expect(@articulo1 > @articulo2).to eq(true)
         end
         
         it "articulo1 >= articulo2" do
            expect(@articulo1 >= @articulo2).to eq(true)
         end
         
         it "articulo1 == articulo1" do
            expect(@articulo1 == @articulo1).to eq(true)
         end
   
         it "articulo1 != articulo2" do
            expect(@articulo1 == @articulo2).to eq(false)
         end
      
      end
      
      
   end
   
   describe List::List do
      
      describe "#Enumerable" do
         
         before :all do
            @artic2 = Bibliografia::Publicacion.new("Raul Rejon", "Las emisiones de CO2 vuelven a subir en España por primera vez desde la crisis", "eldiario.es","23/11/2015", "Articulo de Periodico")
            @artic1 = Bibliografia::Publicacion.new("Ivan Suarez", "Los rescatadores canarios, obligados a saltar al mar sin enganche ante la ausencia de grúas en los helicopteros", "eldiario.es", "24/11/2015", "Articulo de Periodico")
            @artic3 = Bibliografia::Publicacion.new("Lluis Miquel Hurtado", "Turquia derriba un avion ruso por violar su espacio aereo en la frontera con Siria", "El Mundo","24/11/2015", "Articulo de Periodico")
            @artic4 = Bibliografia::Publicacion.new("Aurea Querlat","Asi viven los bruselenses desde que se activo el nivel de alerta maximo", "La Vanguardia", "24/11/2015", "Articulo de Periodico")
            
            @lista = List::List.new(@artic1)
            #@lista.insertar_elemento(@artic1)
            @lista.insertar_elemento(@artic2)
            @lista.insertar_elemento(@artic3)
            @lista.insertar_elemento(@artic4)
            
         end
         
         it "count" do
            expect(@lista.count).to eq(4)
         end
   
         it "max" do
            expect(@lista.max).to eq(@artic3)
         end
         
         it "min" do
            expect(@lista.min).to eq(@artic4)
         end
         
         it "sort" do
            expect(@lista.sort).to eq([@artic4,@artic2,@artic1,@artic3])
         end
         
      end
   
   end
   
     
end