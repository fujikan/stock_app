class StocksController < ApplicationController
  def index
    @stock = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
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
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    @stock.update(stock_params)
    redirect_to stock_path(@stock)
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
    redirect_to stocks_path
  end

  private
  def stock_params
    params.require(:stock).permit(:title, :body, :image)
  end
end
