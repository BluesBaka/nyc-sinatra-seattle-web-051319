class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
    erb :'/application/index'
  end
end
