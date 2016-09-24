class PartsController < ApplicationController

  # GET /parts
  def index
    @parts = Part.all
  end

end
