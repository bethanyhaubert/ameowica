# frozen_string_literal: true

class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    binding.pry
    @cat.images.attach(image)
    if @cat.save
      redirect_to home_path
    else
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :birthday, :image)
  end
end
