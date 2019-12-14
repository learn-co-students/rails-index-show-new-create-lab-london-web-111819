class Coupon < ActiveRecord::Base
    def show_combined_attributes
        self.coupon_code + " - " + self.store
    end
end