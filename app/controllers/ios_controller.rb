class IosController < ApplicationController
 
  def index
  	
@comentario=Coment.new

   @comentarios= Coment.where('type_coment =?', 1)
   
  end

    
end