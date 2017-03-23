class InventoryController < ApplicationController
def index
		@product = Product.all
		
  if params[:search]
    @product = Product.search(params[:search]).order("created_at DESC")
  else
    @product = Product.all.order('created_at DESC')
  end

end


end
