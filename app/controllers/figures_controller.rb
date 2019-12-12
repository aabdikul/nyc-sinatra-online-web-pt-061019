class FiguresController < ApplicationController

  get '/figures' do
  @figures = Figure.all
  erb :'/figures/index'
  end

  get '/figures/new' do
    @figures = Figure.all
    @title = Title.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])

  end

end
