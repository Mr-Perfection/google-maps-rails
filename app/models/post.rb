class Post < ApplicationRecord
	# attr_accessor :city, :state, :zip, :street_address, :address
	
	geocoded_by :full_address # can also be an IP address
	after_validation :geocode
	# after_validation -> {
 #    self.address = self.full_address
 #    geocode
 #  }, if: ->(obj){ obj.full_address != obj.address }

 #  after_validation :reverse_geocode, unless: ->(obj) { obj.raw_address.present? },
 #                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
	# def set_address
 #    	self.address = "#{street_address} #{city} #{state} #{zip}"
 #  	end
 	def full_address
 		"United States, #{zip}, #{state}, #{city}, #{street_address}"
	end
end
