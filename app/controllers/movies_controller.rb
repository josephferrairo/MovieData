class MoviesController < ApplicationController
  require 'rubygems'
  require 'rottentomatoes'
  include RottenTomatoes

  Rotten.api_key = "qtqep7qydngcc7grk4r4hyd9"


  def show
    @movies = RottenList.find(:type => 'in_theaters')
  end
end
