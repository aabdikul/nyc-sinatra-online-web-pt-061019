class FiguresController < ApplicationController

  get '/figures' do
  @figures = Figure.all
  erb :'/figures/index'
  end

  get '/figures/new' do
    @figures = Figure.all
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    #binding.pry
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end

end
