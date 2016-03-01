class CatsController < ApplicationController

  def index
    @cats = Cat.all

    render :index
  end

  def show
    @cat = Cat.find(params[:id])

    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render :show
    else
      @error = @cat.errors.full_messages
      render :error
    end
  end

  def edit
    @cat = Cat.find(params[:id])

    render :edit
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat
      @cat.update(cat_params)
    end
    render :show
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
  end


end
