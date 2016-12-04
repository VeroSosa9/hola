class MostrarcomentariosController < ApplicationController
  
  def show


  end

  def index

  	@comentarios=Coment.all

  end
end
