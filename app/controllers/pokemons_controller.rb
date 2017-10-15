class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save!
    redirect_to '/'
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    #I wasn't able to reset my database, so some pokemon have nil health attributes
    if pokemon.health
      pokemon.health = pokemon.health - 10
      pokemon.save!
      if pokemon.health <= 0
        pokemon.destroy!
      end
    else
      pokemon.destroy!
    end
    redirect_to trainer_path(current_trainer.id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new(name: params[:pokemon][:name], level: 1, health: 100)
    pokemon.trainer_id = current_trainer.id
		pokemon.save!

    redirect_to trainer_path(current_trainer.id)
  end
end
