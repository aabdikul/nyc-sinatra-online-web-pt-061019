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
    binding.pry
    @figure.titles = Title.find_or_create_by(params["title"]["name"])

  end

end
