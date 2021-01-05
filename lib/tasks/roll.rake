namespace :roulette do
    desc "tirar"
    task:roll => :environment do
        colors = ["rojo", "verde", "negro"]
        Roulette.create(result: colors.sample)
    end
end