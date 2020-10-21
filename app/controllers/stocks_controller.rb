class StocksController < ApplicationController
  def index
  end

  def show
    # @stock = Stock.find(params[:id])
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.user_id = current_user.id
    @stock.save
    redirect_to stock_path(@stock)
  end

  def edit
  end

  private
  def stock_params
    params.require(:stock).permit(:title, :body, :image)
  end
end
