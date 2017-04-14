class SlidersController < ApplicationController

  def show
    @sliders = Slider.all
  end

end
