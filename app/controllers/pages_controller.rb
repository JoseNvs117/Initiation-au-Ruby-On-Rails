class PagesController < ApplicationController
  def home
      @variable = 4
  end
    
  def ajout
      @variable = "variable function ajout"
  end
end
