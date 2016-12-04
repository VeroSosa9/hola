module Admin 

class UsersController < ApplicationController
  layout 'admininterface'

  before_action :authenticate_user!
  
  def index
  	@usuarios=User.all
  end

  def new
  	@usuario=User.new
  end

  def update
  	@usuario=User.find (params[:id])
  		if @usuario.update coment_params
  			redirect_to ['admin', @usuario], notice: "Actualizado"
  		else
  			render :edit
  		end
  	end

  def destroy
  	@usuario= User.find(params[:id])
  	@usuario.destroy
  	redirect_to admin_users_path, notice: "Eliminado"

  end
  def show
  	@usuario=User.find(params[:id])
  end

  def edit
  	@usuario=User.find(params[:id])
  end

  def create
  	@usuario=User.new user_params
  	if @usuario.save
  		redirect_to ['admin', @usuario], notice: "Creado"
  	else
  		render :new
  	end
  end

  private 
   def user_params
   	params.require(:user).permit(:nombre, :apellido_paterno, :apellido_materno, :email, :role)
   end
end
end
