class Location < ApplicationRecord
 has_many :images, as: :avatar
	 geocoded_by :address   # can also be an IP address
after_validation :geocode          # auto-fetch coordinates
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

end

