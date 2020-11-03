class BakeShopsController < ApplicationController
  
    before_action :bake_shop_id, only: [:show]

    def index 
        @bake_shops = BakeShop.all
    end

    def show
    end








    private

    def bake_shop_id
        @bake_shop = BakeShop.find(params[:id])
    end

    def get_params
        params.require(:bake_shop).permit(:name, :city, :phone_number)
    end
end
