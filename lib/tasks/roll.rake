namespace :roulette do
    desc "tirar ruleta"
    task:roll => :environment do
        
        @random = case rand(100) + 1
            when  1..49   then 'negro'
            when 49..98   then 'rojo'
            when 98..100  then 'verde'
        end

        @user = User.last

        if @user.money <= 1000
            @user_bet =  @user.money
          else
            @user_bet =  ApiController.call_api*@user.money
          end

        

        @roulette = Roulette.create(result: @random)
        @bet = Bet.create(cash_bet: @user_bet, color_bet: @random, user_id: @user.id, roulette_id: Roulette.last.id)
        
        if Roulette.last.result == @bet.color_bet
            if @bet.color_bet == "verde"
                @user.money += Bet.last.cash_bet*15
            else
                @user.money += Bet.last.cash_bet 
            end
        else
            @user.money -= Bet.last.cash_bet
        end 
        @user.save
        
    end
    desc "cargar dinero"
    task:give_money => :environment do
        @user = User.last
        @user.money += 10000
        @user.save
    end
end