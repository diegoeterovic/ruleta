class BetsController < ApplicationController
  def create
    colors = ["rojo", "verde", "negro"]
    Bet.create(cash_bet: 500, color_bet: colors.sample, user_id: 2, roulette_id: Roulette.last.id)


    def saldo 
      @user = User.where(id = 2)
      
    end

    redirect_to roulettes_index_path
  end
end
