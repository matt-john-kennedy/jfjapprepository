class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @bookings = Booking.all
    if @bookings 
      render json: @bookings, status: :ok
    else
      render json: {error: "No bookings to show"}, status: :not_found
    end
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.errors.any?
      render json: @booking.errors, status: :unprocessable_entity
    else
      render json: @booking, status: :created
    end
  end

  def show
    render json: @booking
  end

  def update
    @booking.update(booking_params)
      if @booking.errors.any?
        render json: @booking.errors, status: :unprocessable_entity
      else
        render json: @booking, status: :created
      end
  end

  def destroy
    @booking.delete
    render json: :no_content
  end

  private
  def booking_params
    params.permit(:start_time, :end_time, :duration, :terms_agreement, :total, :castle_id, :customer_id, :enquiry_id, :paid, :notes)
  end

  def set_booking
    begin
      @booking = Booking.find(params[:id])
    rescue 
      render json: {error: "Booking not found"}, status: :not_found
    end
  end
end
