class CitiesController < ApplicationController
  def index
    @cities = City.all
    render :index
  end
  def new
    @city = City.new
    render :new
  end
  def create
    city_params = params.require(:city).permit(:name, :description, :city_website, :picture)
    @city = City.create(city_params)
    redirect_to cities_path
  end
  def show
    @city = City.find_by_id(params[:id])
    @posts = Post.find_by_id(params[:id])
    render :show
  end
  def edit
    city_id = params[:id]
    @city = City.find_by_id(city_id)
    render :edit
  end
  def update
    city_id = params[:id]
    @city = City.find_by_id(city_id)
    city_params = params.require(:city).permit(:name,:description, :city_website, :picture)
    @city.update_attributes(city_params)
    redirect_to city_path(@city)
  end
  def destroy
    city_id = params[:id]
    @city = City.find_by_id(city_id)
    @city.destroy
    redirect_to cities_path
  end

end
