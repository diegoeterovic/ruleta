class BetsController < ApplicationController
  def create
    colors = ["rojo", "verde", "negro"]
    Bet.create(cash_bet: 500, color_bet: colors.sample, user_id: 2, roulette_id: Roulette.last.id)  
    redirect_to users_resta_saldo_path
  end
end
