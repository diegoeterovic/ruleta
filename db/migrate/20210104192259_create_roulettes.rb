class CreateRoulettes < ActiveRecord::Migration[5.2]
  def change
    create_table :roulettes do |t|
      t.string :result

      t.timestamps
    end
  end
end
