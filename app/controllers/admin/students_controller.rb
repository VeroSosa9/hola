
module Admin 

class StudentsController < ApplicationController

	layout 'admininterface'

  before_action :authenticate_user!
	
  def index
  	@estudiantes=Student.all
  	#select FROM students
  end

  def new
  	@estudiante=Student.new
  	#crear instancia de objeto estudiante
  end

  def update 
  	@estudiante = Student.find (params[:id])
  	if @estudiante.update student_params
  		redirect_to ['admin', @estudiante], notice:"Actualizado"
  	else 
  		render :edit
  	end
  end

  def destroy 
  	@estudiante= Student.find(params[:id])
  	@estudiante.destroy
  	redirect_to admin_students_path, notice: "Usuario eliminado"
  end

  def show
  	@estudiante=Student.find(params[:id])
  end

  def edit
  	@estudiante = Student.find(params[:id])
  end

  def create
  	@estudiante=Student.new  student_params
  	if @estudiante.save 
  	redirect_to ['admin', @estudiante], notice:"Usuario creado"
  else 
  	render :new
  end 
  end

  private
  	def student_params
  		params.require(:student).permit(:nombre, :apellido_paterno, :apellido_materno, :fecha_nacimiento, :telefono)
  	end
end
end