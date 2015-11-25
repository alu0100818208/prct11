#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 9." do

   describe Bibliografia::Biblio do
      
      describe "#Comparable." do
      
         before :all do
            @articulo2 = Bibliografia::Publicacion.new("Raul Rejón", "Las emisiones de CO2 vuelven a subir en España por primera vez desde la crisis", "eldiario.es","23/11/2015", "Artículo de Periódico", "http://www.eldiario.es/sociedad/Espana-aumenta-emisiones-invernadero-Europa_0_455305070.html")
            @articulo1 = Bibliografia::Publicacion.new("Iván Suárez", "Los rescatadores canarios, obligados a saltar al mar sin enganche ante la ausencia de grúas en los helicópteros", "eldiario.es", "24/11/2015", "Artículo de Periódico", "http://www.eldiario.es/canariasahora/sociedad/rescatadores-Canarias-salto-mar-gruas-helicopteros_0_455654439.html")
            
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
            @artic2 = Bibliografia::Publicacion.new("Raul Rejón", "Las emisiones de CO2 vuelven a subir en España por primera vez desde la crisis", "eldiario.es","23/11/2015", "Artículo de Periódico", "http://www.eldiario.es/sociedad/Espana-aumenta-emisiones-invernadero-Europa_0_455305070.html")
            @artic1 = Bibliografia::Publicacion.new("Iván Suárez", "Los rescatadores canarios, obligados a saltar al mar sin enganche ante la ausencia de grúas en los helicópteros", "eldiario.es", "24/11/2015", "Artículo de Periódico", "http://www.eldiario.es/canariasahora/sociedad/rescatadores-Canarias-salto-mar-gruas-helicopteros_0_455654439.html")
            @artic3 = Bibliografia::Publicacion.new("Lluís Miquel Hurtado", "Turquía derriba un avión ruso por violar su espacio aéreo en la frontera con Siria", "El Mundo","24/11/2015", "Artículo de Periódico", "http://www.elmundo.es/internacional/2015/11/24/56541ce446163f46638b4577.html" )
            @artic4 = Bibliografia::Publicacion.new("Aurea Querlat","Así viven los bruselenses desde que se activó el nivel de alerta máximo", "La Vanguardia", "24/11/2015", "Artículo de Periódico", "http://www.lavanguardia.com/participacion/20151124/30365644580/bruselas-alerta-terrorista.html")
            
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