class HivesController < ApplicationController
  def create
    current_field = FieldOfOrigin.find(params[:field_of_origin_id])
    if current_field
      current_field.hives.create!(params[:hive])
      render :json => current_field.to_json(:include => :hives)
    else 
      head :error
    end
  end
end
