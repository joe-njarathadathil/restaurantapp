class ReservationsController < ApplicationController

    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    # GET /reservations
    # GET /restaurants.json
    def index
      @reservations = Reservations.all
    end

    # GET /restaurants/1
    # GET /restaurants/1.json
   

    
    

    # GET /restaurants/1/edit
    def edit
    end

    # POST /restaurants
    # POST /restaurants.json
    def create
      @reservations = Reservations.new(restaurant_params)
      current_user.reservations << @reservation 
      respond_to do |format|
        if @reservation.save
          format.html { redirect_to @restaurant, notice: 'Reservation was successfully created.' }
          format.json { render :show, status: :created, location: @restaurant }
        else
          format.html { render :new }
          format.json { render json: @restaurant.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /restaurants/1
    # PATCH/PUT /restaurants/1.json
    def update
      respond_to do |format|
        if @reservation.update(restaurant_params)
          format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
          format.json { render :show, status: :ok, location: @restaurant }
        else
          format.html { render :edit }
          format.json { render json: @restaurant.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /restaurants/1
    # DELETE /restaurants/1.json
    def destroy
      @restaurant.destroy
      respond_to do |format|
        format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def restaurant_params
        params.require(:reservation).permit(:name, :description, :address, :phone_number)
      end
  end

end
