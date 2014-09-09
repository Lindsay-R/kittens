class JoinsController < ApplicationController

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @join = Join.new
  end

  def create
    @join = Join.new(kitten_id: params[:kitten_id], category_id: params[:join][:category_id])
    if @join.save
      redirect_to :root
    else
      @kitten = Kitten.find(params[:kitten_id])
      render :new
    end
  end

end