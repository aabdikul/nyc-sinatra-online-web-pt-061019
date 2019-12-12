class FiguresController < ApplicationController

  get '/figures' do
  @figures = Figure.all
  erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @title = Title.create(params[:title])
  end

end
