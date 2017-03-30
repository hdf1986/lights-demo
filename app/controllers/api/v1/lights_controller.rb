class Api::V1::LightsController < ApplicationController
  def index
    render json: Light.all
  end

  def toggle
    Light.all.each do |light|
      light.toggle(:state).save
    end
    render json: Light.all
  end

  def keep_alive
    Light.all.each(&:touch)
    render json: Light.all
  end
end
