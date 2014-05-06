class ProductmanufacturerController < ApplicationController
  def showproducts

 	@products = Product.all


  end

  def showmanufacturers
  	@manufacturers = Manufacturer.where(city: "Macon")

  	#@manufacturers = Manufacturer.first
  	#@manufacturers = Manufacturer.first(1)

  end

  def findproduct

  	current_product_id = 2

  	@product = Product.find(current_product_id)
  end

  def find_products_by_manu
  	@products = Product.where(manufacturer_id: 2).order(:name)

  end 
end
