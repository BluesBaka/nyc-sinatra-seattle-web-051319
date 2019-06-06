class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  # CREATEing a new instance of Figure
  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  # READing a specific instance of Figure
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end
end
