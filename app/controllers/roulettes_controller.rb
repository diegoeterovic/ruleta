class RoulettesController < ApplicationController

  def create
    colors = ["rojo", "verde", "negro"]
    @roulette = Roulette.create(result: colors.sample)



    
    




    redirect_to bets_create_path
    

  end


  def index

    
    @rolls = Roulette.all.order('created_at desc')
    @users = User.all

  end
end
