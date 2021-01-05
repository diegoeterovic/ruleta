class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.integer :cash_bet
      t.string :color_bet
      t.references :user, foreign_key: true
      t.references :roulette, foreign_key: true

      t.timestamps
    end
  end
end
