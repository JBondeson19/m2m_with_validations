class BakeShopsController < ApplicationController
  
    before_action :bake_shop_id, only: [:show, :destroy, :edit, :update]

    def index 
        @bake_shops = BakeShop.all
    end

    def show
    end

    def new 
        @bake_shop = BakeShop.new
    end

    def create
        bake_shop = BakeShop.create(get_params)
        redirect_to bake_shop_path(bake_shop)
    end

    def edit 
    end

    def update
        @bake_shop.update(get_params)
        redirect_to bake_shop_path(@bake_shop)
    end


    def destroy
        @bake_shop.destroy
        redirect_to bake_shops_path
    end


    private

    def bake_shop_id
        @bake_shop = BakeShop.find(params[:id])
    end

    def get_params
        params.require(:bake_shop).permit(:name, :city, :phone_number)
    end
end
