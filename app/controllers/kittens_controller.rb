class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
    @joins=Join.all
    @categories=Category.all

  end
  def show
    @kitten = Kitten.find(params[:id])
    @category = Category.all

  end



end