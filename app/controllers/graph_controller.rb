class GraphController < ApplicationController
  #before_action :authenticate_user!, only: :index
  def index
    @g = Gruff::Scatter.new
    @g.title = 'Rails Scatter Graph'
    y_values = (0..50000).map { rand(50000) }
    x_values = (0..50000).map { rand(50000) }
    @g.data('many points', x_values, y_values)

    @g.write(File.join(Rails.root, 'app/assets/images/scatter.png'))
  end
end

require 'gruff'