class Api::V1::LightsController < ApplicationController
  def index
    render_bool Light.first.state
  end

  def toggle
    Light.first.toggle(:state).save
    render_bool Light.first.state
  end

  def view
    Light.first.touch
    render_bool Light.first.state
  end

  private 
  def render_bool b
    b ? render_false : render_true
  end

  def render_false
    render plain: "*" * 100
  end

  def render_true
    render plain: "*" * 300
  end
end
