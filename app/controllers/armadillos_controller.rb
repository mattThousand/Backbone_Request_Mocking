class ArmadillosController < ApplicationController

  respond_to :json

  def show
    @armadillos = Armadillo.all
    respond_with @armadillos
  end


end
