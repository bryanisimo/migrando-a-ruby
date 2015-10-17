class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def new
    @dog = Dog.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :color, :description, :breed)
  end
end
