class SalesController < ApplicationController
	def index
		@product = Product.all
		@sale = Sale.all
	end

	def new
		@sale = Sale.new
	end

	def show
		@sale = Sale.find(params[:id])
	end

	def edit
		@sale = Sale.find(params[:id])
	end


	def destroy
		@sale = Sale.find(params[:id])

		@sale.destroy

		redirect_to sales_path
	end

	def update
		@sale = Sale.find(params[:id])

		if @sale.update_attributes(allowed_params)
			redirect_to edit_sale_path

		else
			render 'new'
		end
	end


	def create
		@product = Product.all
		@sale = Sale.new
		@sale = Sale.new(allowed_params)
		@sale.save
		
			redirect_to sales_path

	end
	def sold
		@product = Product.all
		@sale = Sale.all
	
		@sale = Sale.find(params[:id])
		@product.product_stock = @product.product_stock - 10
		@product.save
		redirect_to sales_path
	
end

	private
	def allowed_params
		params.require(:sale).permit(:item_ordered,:number_of_items)
	end
end
	
