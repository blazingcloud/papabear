class FieldOfOriginsController < ApplicationController
  def index
    @field_of_origins =  FieldOfOrigin.all
  end
  def create
    my_field = FieldOfOrigin.create!(params[:field_of_origin])
    render :json => my_field 
  rescue
    head :error
  end
end
