class Post < ApplicationRecord
	include Geocoder::Model::Mongoid
	geocoded_by :address               # can also be an IP address
	after_validation :geocode, if: :address_changed?          # auto-fetch coordinates
end
