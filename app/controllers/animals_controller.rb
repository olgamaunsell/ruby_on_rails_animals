class AnimalsController < ApplicationController

  def index
    @animals = [ {name: "Tiger", age: "5"}, {name: "Snow Leopard", age: "1"}]
    render :json => @animals
  end
end
