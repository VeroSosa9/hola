class AndroidController < ApplicationController
 
  def index

 
  	@comentario=Coment.new

   @comentarios= Coment.where('type_coment =?', 0)
   
  end


end