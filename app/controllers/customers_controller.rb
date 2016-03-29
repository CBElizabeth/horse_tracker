class CustomersController < ApplicationController

	before_filter :authorize

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to user
		else
			redirect_to user
		end
	end

	private

	def customer_params
		params.require(:customer).permit(:name, :address_1, :address_2, :address_3, :city, :state, :zip, :phone_1, :phone_2, :fax_1, :fax_2, :email, :website)
	end
	
end
