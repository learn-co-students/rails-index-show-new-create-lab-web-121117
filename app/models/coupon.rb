class Coupon < ActiveRecord::Base
  def linked_coupon
    self.store + " " + self.coupon_code 
  end
end
