class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def show
    @good = Good.find(params[:id])
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(good_params)

    if @good.save
      redirect_to good_path(@good)
    else
      render :new
    end
  end

  def edit
    @good = Good.find(params[:id])
  end

  def update
    @good = Good.find(params[:id])

    if @good.update(good_params)
      redirect_to good_path(@good)
    else
      render :edit
    end
  end

  def destroy
    good = Good.find(params[:id])
    good.destroy

    redirect_to goods_path
  end

  private

  def good_params
    params.require(:good).permit(:name, :price, :calories, :bake_shop_id)
  end
end
