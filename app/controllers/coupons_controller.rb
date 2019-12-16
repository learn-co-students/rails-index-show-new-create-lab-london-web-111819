class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new 
        @coupon = Coupon.new
    end

    def create 
        @coupon = Coupon.create(coupon_params)
        redirect_to @coupon
    end

    def show 
        id = params[:id]
        @coupon = Coupon.find(id)
    end 

    private

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end