class Listing < ApplicationRecord
  # Association
  has_many :listimage
  # Validation
  validates_presence_of :address, :zip_code, :city, :beds, :baths, :sqft, :property_type, :built_year, :sale_type,
                        :price, :title, :description, :virtual_tour, :default_img, :status, :created_by
end
