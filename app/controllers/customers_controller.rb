class CustomersController < ApplicationController
  def new
  end

  def create
    customer = Customer.new(customer_params)
    if customer.save
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      redirect_to '/signup'
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :name, :password, :password_confirmation)
  end
end
