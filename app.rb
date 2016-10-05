require 'sinatra'
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"
require_relative 'models/pokemon'

# Show all Models
get "/" do
  # 1. Get all the pokemons
  @pokemons=Pokemon.all
  # 2. Render the pokemons
  erb :"pokemons/index"
end

get "/pokemons" do
  # 1. Get all the pokemons
  @pokemons=Pokemon.all
  # 2. Render the pokemons
  erb :"pokemons/index"
end

# reseed database
get "/pokemons/reseed" do
  Pokemon.destroy_all
  Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
  Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
  Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
  Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
  Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
  Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
  Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
  Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")
  redirect("/pokemons")
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

# delete Pokemon

delete '/pokemons/:id' do
  @pokemons = Pokemon.find(params[:id])
  @pokemons.destroy
  redirect("/pokemons")
end
