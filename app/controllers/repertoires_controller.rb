class RepertoiresController < ApplicationController
  def show
    @repertoire = Repertoire.find(params[:id])
  end
end
