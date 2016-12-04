module Admin 

class ComentsController < ApplicationController
  layout 'admininterface'

  before_action :authenticate_user!
  
  def index
  	@comentarios=Coment.all
    
  end

  def new
  	@comentario=Coment.new
  end

  def update

  	@comentario=Coment.find (params[:id])
  		if @comentario.update coment_params
  			redirect_to ['admin', @comentario], notice: "Actualizado"
  		else
  			render :edit
  		end
  	end

  def destroy
  	@comentario= Coment.find(params[:id])
  	@comentario.destroy
  	redirect_to admin_coments_path, notice: "Comentario eliminado"

  end
  def show
  	@comentario=Coment.find(params[:id])
  end

  def edit
  	@comentario=Coment.find(params[:id])
  end

  def create
       
  	@comentario=Coment.new coment_params
    # binding.pry
  	if @comentario.save
  		redirect_to root_path, notice: "Comentario creado"
  	else
      	  
        render :new


        
  	end
  end

  private 
   def coment_params
   	params.require(:coment).permit(:descripcion, :user_id, :type_coment)
   end
end
end
