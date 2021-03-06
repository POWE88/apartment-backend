class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :update, :destroy]
  # GET /aparments
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  # GET /apartments/1
  def show
    render json: @apartment
  end

  def show_user_apartments
    @user = User.find(params[:user_id])
    @apartments = @user.apartments
    render json: @apartments
  end

  # POST /apartments
  def create
    @apartment = Apartment.new(apartment_params)

    if @apartment.save
      render json: @apartment, status: :created, location: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apartments/1
  def update
    if @apartment.update(apartment_params)
      render json: @apartment
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apartments/1
  def destroy
    @apartment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def apartment_params
      params.require(:apartment).permit(:street,:city,:zipcode,:state,:country,:managername,:managerphone,:managerhours, :user_id)
    end
end
