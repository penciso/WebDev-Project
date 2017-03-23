class ProductsController < ApplicationController
	def index
		@product = Product.all

		@product = Product.all
  		if params[:search]
   		 @product = Product.search(params[:search]).order("created_at DESC")
  else
    @product = Product.all.order('created_at DESC')
  end
	end

	def new
		@product = Product.new
		@supplier = Supplier.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end


	def destroy
		@product = Product.find(params[:id])

		@product.destroy

		redirect_to inventory_index_path
	end

	def update
		@product = Product.find(params[:id])

		if @product.update_attributes(allowed_params)
			redirect_to edit_product_path

		else
			render 'new'
		end
	end


	def create
		@product = Product.new
		@product = Product.new(allowed_params)
		if @product.save
		
			redirect_to inventory_index_path
		else
			render 'new'
		end
	end
	
	private
	def allowed_params
		params.require(:product).permit(:product_id, :product_name, :product_price, :product_stock, :supplier, :delivery_date)
	end
end
