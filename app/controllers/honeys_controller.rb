class HoneysController < ApplicationController
  def create
    current_hive = Hive.find(params[:hive_id])
    if current_hive
      current_hive.honeys.create(params[:honey])
      render :json => current_hive.to_json(:include => :honeys)
    else 
      head :error
    end
  end
end
