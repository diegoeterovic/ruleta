class RoulettesController < ApplicationController


  def get_random()
    case rand(100) + 1
      when  1..49   then 'negro'
      when 49..98   then 'rojo'
      when 98..100  then 'verde'
    end
  end


  def create
    
    @roulette = Roulette.create(result: get_random)
    redirect_to bets_create_path
    
  end


  def index

    
    @rolls = Roulette.all.order('created_at desc')
    @users = User.all

  end
end
