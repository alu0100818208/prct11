#!/usr/bin/env ruby
# encoding: utf-8
require "bibliografia/biblio.rb"
require "spec_helper.rb" 
require "bibliografia/list.rb"

describe "Práctica 10" do
     
      context "Libro" do
       
         l = Libro.new("AAAA") do
            
            author "A. A." 
            date "2020"
            edition "5ª edición"
            volume "vol 1"
            place "Marte"
            editor "Salamandra"
      
         end
        
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
       
         ap = ArticuloPeriodico.new("CCCC") do
            
            author "C. A." 
            date "2004"
            journal "Periodico"
            pages "10"
      
         end
        
         it "Se usa el APA en el artículo de periódico" do
            expect(ap.titulo).to eq("CCCC")
            expect(ap.autor).to eq(["C. A."])
            expect(ap.fecha).to eq(["2004"])
            expect(ap.periodico).to eq(["Periodico"])
            expect(ap.paginas).to eq(["10"])
         end
         
      end
end