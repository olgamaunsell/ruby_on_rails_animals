class AnimalsController < ApplicationController

  def animal_params
    params.require(:animal).permit([:name, :legs])
  end

  def index
    @animals = Animal.all
    render :json => @animals.as_json(methods: :move)
    # respond_to do |format|
    #   format.html
    # format.json{render :json => @animals}
    # end
  end

  def show
    @animal = Animal.find(params[:id])
    render :json => @animal.as_json(methods: :move)
  end

  def create
    animal = Animal.create(animal_params)
    render :json => animal
  end

  def update
    animal = Animal.find(params[:id])

    if animal.update_attributes(animal_params)
      render :json => animal
    else
      render :json => {status: :update_failed}
    end
  end

  def destroy
    animal = Animal.find(params[:id])

    if animal.destroy!
      render :json => { status: :success  }
    else
      render :json => { status: :delete_failed }
    end
  end
end
