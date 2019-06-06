class FiguresController < ApplicationController

  # READing all figures on index page
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  # CREATEing a new instance of Figure
  get '/figures/new' do
    erb :'figures/new'
  end

  # READing a specific instance of Figure
  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    redirect to "/figures/#{@figure.id}"
  end
end
