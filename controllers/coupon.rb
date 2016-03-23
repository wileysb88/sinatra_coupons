class CouponController < ApplicationController

    get '/' do
      @all_coupons = Coupon.all
      @all_coupons.to_json


      @coupon = Coupon.new
      @coupon.title = "Half Off Coffee"
      @coupon.description = "Take 50% off your coffee purchase"
      @coupon.product = "Coffee"
      @coupon.discount_price = "1.99"
      @coupon.expiration_date = "Nov 2016"
      @coupon.save

      @couponTwo = Coupon.new
      @couponTwo.title = "99 cent taco"
      @couponTwo.description = "99 cent taco"
      @couponTwo.product = "Taco"
      @couponTwo.discount_price = "0.99"
      @couponTwo.expiration_date = "Dec 2016"
      @couponTwo.save



      erb :coupon
    end



end
