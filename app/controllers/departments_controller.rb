class DepartmentsController < ApplicationController
  before_action :set_sub, only: [:show, :update, :edit, :destroy]

  def index
    @departments = Department.all
      end

  def show
    @departments = Department.all
  end

  def new
    @department = departments.new
    render partial: "form"
  end

  def edit
    #GET 
    render partial: "form"
  
  end



  def create
    @department = Department.new(department_params)
    
    if @departmnet.save
      redirect_to departments_path
    else
      render :new
    end
  end

  
 
  private
 
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end

  def update
    if @department.update(department_params)
      redirect_to @department
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private
    
    def set_sub
      @department = Department.find(params[:id])
    end

    def sub_params
      params.require(:department).permit(:name)
    end
end
