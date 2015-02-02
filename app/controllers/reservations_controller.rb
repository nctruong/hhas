class ReservationsController < ApplicationController

  # GET /reservations/new
  def new
    @opentimes   = Opentime.order(created_at: :asc)
    @reservation = Reservation.new
  end
  
  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to new_reservation_path, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def reservation_params
    params.require(:reservation).permit(:name, :phone, :email, :datetime, :isFlexible, :message, :status)
  end
end