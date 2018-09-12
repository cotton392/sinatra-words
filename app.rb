require 'sinatra'
require 'sinatra/activerecord'
require './models/card.rb'
require 'sinatra/reloader'

get '/cards' do
  cards = Card.all
  erb :index, locals: { cards: cards }
end