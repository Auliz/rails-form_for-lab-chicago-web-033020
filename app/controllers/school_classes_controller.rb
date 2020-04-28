class SchoolClassesController < ApplicationController
  
  def index
  end 

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = class_params[:title]
    @school_class.room_number = class_params[:room_number]
    @school_class.save
    redirect_to @school_class
  end

  def show
    find_class
  end 

  def edit
    find_class
  end 

  def update
    find_class
    @school_class.update(class_params)
    redirect_to @school_class
  end 


  private 

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end 

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end 

end 