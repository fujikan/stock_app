class StocksController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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
    if @stock.save
      redirect_to stock_path(@stock), notice: "投稿しました。"
    else
      render :new
    end
  end

  def edit
    @stock = Stock.find(params[:id])
    if @stock.user != current_user
      redirect_to stocks_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @stock = Stock.find(params[:id])
    if @stock.update(stock_params)
     redirect_to stock_path(@stock), notice: "更新しました。"
    else
      render :edit
    end
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
