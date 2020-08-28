class RepertoiresController < ApplicationController

  def show
    @repertoire = current_user.repertoire
  end
end
