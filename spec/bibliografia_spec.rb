#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 10" do
   
   l = Libro.new("AAAA") do
            
      author "A. A." 
      date "2020"
      edition "5ª edición"
      volume "vol 1"
      place "Marte"
      editor "Salamandra"
      
   end
   
   a = Articulo.new("BBBB") do
            
      author "B. A." 
      date "2020"
      edition "5ª edición"
      pages "50"
      book "Titulo Libro"
      volume "1"
      place "Marte"
      editor "Salamandra"
      
   end
     
   ap = ArticuloPeriodico.new("CCCC") do
            
      author "C. A." 
      date "2004"
      journal "Periodico"
      pages "10"
      
   end
   
   e = Electronico.new("DDDD") do
            
      author "D. A."
      date "2014"
      edition "1ª edición"
      type "tipo de medio"
      url "url"
      place "Mercurio"
      
   end
   
         
   describe "Bibliografia" do
     
      context "Libro" do
        
         it "Se usa el APA en el libro" do
            expect(l.titulo).to eq("AAAA")
            expect(l.autor).to eq(["A. A."])
            expect(l.fecha).to eq(["2020"])
            expect(l.edicion).to eq(["5ª edición"])
            expect(l.volumen).to eq(["vol 1"])
            expect(l.lpublicacion).to eq(["Marte"])
            expect(l.edito).to eq(["Salamandra"])
            
         end
         
      end
      
      context "Articulo" do
        
         it "Se usa el APA en el artículo" do
            expect(a.titulo).to eq("BBBB")
            expect(a.autor).to eq(["B. A."])
            expect(a.fecha).to eq(["2020"])
            expect(a.edicion).to eq(["5ª edición"])
            expect(a.pags).to eq(["50"])
            expect(a.titulob).to eq(["Titulo Libro"])
            expect(a.volumen).to eq(["1"])
            expect(a.lpublicacion).to eq(["Marte"])
            expect(a.edito).to eq(["Salamandra"])
         end
         
      end
      
      context "Articulo de Periódico" do
        
         it "Se usa el APA en el artículo de periódico" do
            expect(ap.titulo).to eq("CCCC")
            expect(ap.autor).to eq(["C. A."])
            expect(ap.fecha).to eq(["2004"])
            expect(ap.periodico).to eq(["Periodico"])
            expect(ap.paginas).to eq(["10"])
         end
         
      end
      
      context "Electronico" do
        
         it "Se usa el APA en electronico" do
            expect(e.titulo).to eq("DDDD")
            expect(e.autor).to eq(["D. A."])
            expect(e.fecha).to eq(["2014"])
            expect(e.edicion).to eq(["1ª edición"])
            expect(e.tmedio).to eq(["tipo de medio"])
            expect(e.dir).to eq(["url"])
            expect(e.lpublicacion).to eq(["Mercurio"])
         end
         
      end
         
         
   end
   
   describe "Lista" do
      
      listilla = List::List.new(l)
      listilla.insertar_elemento(a)
      listilla.insertar_elemento(ap)
      listilla.insertar_elemento(e)
      
      
      output = ["DDDD D. A. (2014) (1ª edición) (tipo de medio) Mercurio (url)", "CCCC C. A. (2004) (10)(Periodico)", "BBBB B. A. (2020)  Titulo Libro  50 (5ª edición) (1) Marte Salamandra ", "AAAA A. A. (2020) (5ª edición) (vol 1) Marte Salamandra "]
      

      it "La lista se imprime en formato APA" do
         expect(listilla.to_s).to eq(output)
      end
      
      
   end
   
end