class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def view
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = coupon_code
    @coupon.store = coupon_store
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

end
