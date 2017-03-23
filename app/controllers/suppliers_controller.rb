class SuppliersController < ApplicationController
	def index
		@supplier = Supplier.all

		@supplier = Supplier.all
  		if params[:search]
   		 @supplier = Supplier.search(params[:search]).order("created_at DESC")
  else
    @supplier = Supplier.all.order('created_at DESC')
  end
	end

	def new
		@supplier = Supplier.new
	end

	def show
		@supplier = Supplier.find(params[:id])
	end

	def edit
		@supplier = Supplier.find(params[:id])
	end


	def destroy
		@supplier = Supplier.find(params[:id])

		@supplier.destroy

		redirect_to suppliers_path
	end

	def update
		@supplier = Supplier.find(params[:id])

		if @supplier.update_attributes(allowed_params)
			redirect_to edit_supplier_path

		else
			render 'new'
		end
	end


	def create
		@supplier = Supplier.new
		@supplier = Supplier.new(allowed_params)
		if @supplier.save
		
			redirect_to suppliers_path
		else
			render 'new'
		end
	end
	
	private
	def allowed_params
		params.require(:supplier).permit(:supplier_name, :supplier_address, :supplier_manager, :contact_number)
	end
end
