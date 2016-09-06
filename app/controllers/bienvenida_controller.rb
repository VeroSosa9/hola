class BienvenidaController < ApplicationController
  def index
  	@saludo = "Hola a todos"

  end

  def hola
  	@multi = params[:x].to_i * params[:y].to_i
  end
end
