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
end