module Admin 

class UsuariosController < ApplicationController
  layout 'admininterface'

  before_action :authenticate_user!

  def index
  	@usuarios=Usuario.all
  end

  def new
  	@usuario=Usuario.new
  end

  def update
  	@usuario=Usuario.find (params[:id])
  		if @usuario.update usuario_params
  			redirect_to ['admin', @usuario], notice: "Actualizado"
  		else
  			render :edit
  		end
  	end

  def destroy
  	@usuario= Usuario.find(params[:id])
  	@usuario.destroy
  	redirect_to admin_usuarios_path, notice: "Usuario eliminado"

  end
  def show
  	@usuario=Usuario.find(params[:id])
  end

  def edit
  	@usuario=Usuario.find(params[:id])
  end

  def create
  	@usuario=Usuario.new usuario_params
  	if @usuario.save
  		redirect_to ['admin', @usuario], notice: "Usuario creado"
  	else
  		render :new
  	end
  end

  private 
   def usuario_params
   	params.require(:usuario).permit(:nombre, :ocupacion, :edad)
   end
end
end
