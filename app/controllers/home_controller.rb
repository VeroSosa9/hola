class HomeController < ApplicationController

	
  def index
  	@comentario=Coment.new
  end
end
