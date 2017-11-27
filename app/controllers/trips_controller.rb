class TripsController < ProtectedController
  # update to protected controller so that user authentication is required to
  # do anything on the application

  before_action :set_trip, only: [:show, :update, :destroy]

  # GET all /trips
  def index
    @trips = current_user.trips.all

    render json: @trips
  end

  # GET /trips/1
  def show
    render json: @trip
  end

  # POST /trips
  def create
    @trip = current_user.trips.build(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def trip_params
    params.require(:trip).permit(:location, :done)
  end
end
