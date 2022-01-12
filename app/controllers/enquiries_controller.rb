class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :update, :destroy]

  def index
    @enquiries = Enquiry.all
    if @enquiries 
      render json: @enquiries, status: :ok
    else
      render json: {error: "No enquiries to show"}, status: :not_found
    end
  end

  def create
    @enquiry = Enquiry.create(enquiry_params)
    if @enquiry.errors.any?
      render json: @enquiry.errors, status: :unprocessable_entity
    else
      render json: @enquiry, status: :created
    end
  end

  def show
    render json: @enquiry
  end

  def update
    @enquiry.update(enquiry_params)
    if @enquiry.errors.any?
      render json: @enquiry.errors, status: :unprocessable_entity
    else
      render json: @enquiry, status: :created
    end
  end

  def destroy
    @enquiry.delete
    render json: :no_content
  end

  private
  def set_enquiry
    begin
      @enquiry = Enquiry.find(params[:id])
    rescue 
      render json: {error: "Enquiry not found"}, status: :not_found
    end
  end

  def enquiry_params
    params.permit(:start_time, :end_time, :duration, :terms_agreement, :total, :castle_id, :customer_id, :paid, :notes)
  end
end
