class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def new
    @coupon = Coupon.new
  end

  def create
    # byebug
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to @coupon
  end

  private

  # def coupon_params
  #   params.require(:coupon).permit(:coupon_code, :store)
  # end

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end



end
