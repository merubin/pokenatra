require 'active_record'
require_relative 'connection'

# models
require_relative '../models/pokemon'
require_relative '../models/trainer'
Pokemon.destroy_all
Trainer.destroy_all

tid1=Trainer.create(name:"Jesse",level:1,img_url:"https://files.slack.com/files-pri/T2D6FU4JY-F2KAZ33M3/thumb_jesse.jpg")
tid2=Trainer.create(name:"Nick",level:2,img_url:"hhttps://avatars.slack-edge.com/2016-10-04/87297363220_7b9be37130193a0e4853_72.jpg")
tid3=Trainer.create(name:"Donald",level:3,img_url:"https://lh5.googleusercontent.com/-Sv0q6lkSAGM/AAAAAAAAAAI/AAAAAAAAADA/V2au8qwIkVA/s0-c-k-no-ns/photo.jpg")

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg",trainer_id: tid1.id)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg",trainer_id: tid1.id)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg",trainer_id: tid1.id)


Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg",trainer_id: tid2.id)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg",trainer_id: tid2.id)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg",trainer_id: tid2.id)


Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg",trainer_id: tid3.id)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg",trainer_id: tid3.id)
