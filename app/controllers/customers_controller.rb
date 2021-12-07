class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]
  def index
    @customers = Customer.all
    if @customers 
      render json: @customers, status: :ok
    else
      render json: {error: "No customers to show"}, status: :not_found
    end
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.errors.any?
      render json: @customer.errors, status: :unprocessable_entity
    else
      render json: @customer, status: :created
    end
  end

  def show
    render json: @customer, status: :ok
  end

  def update
    @customer.update(customer_params)
    if @customer.errors.any?
      render json: @customer.errors, status: :unprocessable_entity
    else
      render json: @customer, status: :created
    end
  end

  def destroy
    @customer.delete
    render json: :no_content
  end

  private
  def customer_params 
    params.permit(:name, :email, :phone_number, :street_number, :street_name, :suburb, :postcode, :notes)
  end 

  def set_customer
    begin
      @customer = Customer.find(params[:id])
    rescue 
      render json: {error: "Customer not found"}, status: :not_found
    end
  end
end
