class Animal < ApplicationRecord


  def move
    movement = "walk"
    movement = "slither" if !legs || legs == 0
    return movement
  end
end
