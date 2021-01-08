class BetsController < ApiController

  def get_random()
    case rand(100) + 1
      when  1..49   then 'negro'
      when 49..98   then 'rojo'
      when 98..100  then 'verde'
    end
  end

  def user_bet

    if User.last.money <= 1000
      User.last.money
    else
      ApiController.call_api*User.last.money
    end

  end

  def create
    
    Bet.create(cash_bet: user_bet, color_bet: get_random, user_id: User.last.id, roulette_id: Roulette.last.id)  
    redirect_to users_resta_saldo_path
  end
end
