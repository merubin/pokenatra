require 'sinatra'
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"
require_relative 'models/pokemon'

# Show all Models
get "/pokemons" do
  # 1. Get all the pokemons
  @pokemons=Pokemon.all
  # 2. Render the pokemons
  erb :"pokemons/index"
end

# NEW Pokemon
get '/pokemons/new' do
  erb :"pokemons/new"
end


# Show a single models

get '/pokemons/:id' do
  @pokemons = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

# Edit Pokemonget
get "/pokemons/:id/edit" do
  @pokemons = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end

put '/pokemons/:id' do
  @pokemons = Pokemon.find(params[:id])
  @pokemons.update(params[:pokemon])
  redirect("/pokemons/#{@pokemons.id}")
end


post '/pokemons' do
  @pokemons = Pokemon.create(params[:pokemon])
  redirect("/pokemons/#{@pokemons.id}")
end
