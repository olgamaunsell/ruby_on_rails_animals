class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render :json => @animals
    # respond_to do |format|
    #   format.html
      # format.json{render :json => @animals}
    # end
  end
end
