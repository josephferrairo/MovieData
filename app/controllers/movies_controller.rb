class MoviesController < ApplicationController
  require 'rubygems'
  require 'rottentomatoes'
  include RottenTomatoes

  Rotten.api_key = ENV['rotten_api_key']

  def new
    @movie = Movie.new
  end
  def show
    @movies = RottenList.find(:type => 'in_theaters')
  end


end
