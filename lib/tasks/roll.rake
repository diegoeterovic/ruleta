namespace :roulette do
    desc "tirar"
    task:roll => :environment do
        
        Roulette.create
    end
end