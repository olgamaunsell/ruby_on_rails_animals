class AnimalsController < ApplicationController
  def index
    animals = Animal.all
    render :json => animals
    # respond_to do |format|
    #   format.html
      # format.json{render :json => @animals}
    # end
  end

  def show
    animal = Animal.find(params[:id])
    render :json => animal
  end

  def create
    animal = Animal.create( params.require(:animal).permit([:name, :legs]))
    render :json => animal
  end
end
