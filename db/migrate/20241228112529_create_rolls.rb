class CreateRolls < ActiveRecord::Migration[8.1]
  def change
    create_table :rolls do |t|
      t.string :type
      t.string :subject, null: false
      t.json :dice_pool, default: { base: [] }

      t.references :character, null: false, foreign_key: true
      t.references :first_roll, null: true, foreign_key: { to_table: :rolls }

      t.timestamps
    end
  end
end
