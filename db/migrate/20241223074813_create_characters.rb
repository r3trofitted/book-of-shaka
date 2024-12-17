class CreateCharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :profession
      t.string :kin
      t.integer :age
      t.string :pride
      t.string :appearance
      t.string :dark_secret
      t.integer :reputation, null: false, default: 0
      t.integer :experience, null: false, default: 0
      t.boolean :sleepless, null: false, default: false
      t.boolean :thirsty, null: false, default: false
      t.boolean :hungry, null: false, default: false
      t.boolean :cold, null: false, default: false
      t.json :injuries, null: false, default: []
      t.integer :willpower, null: false, default: 0
      t.string :strength
      t.string :agility
      t.string :wits
      t.string :empathy
      t.json :skills, null: false, default: {}
      t.json :talents, null: false, default: {}
      t.string :food
      t.string :water
      t.string :arrows
      t.string :torches
      t.json :equipment, null: false, default: []
      t.json :coins, null: false, default: {}

      t.timestamps
    end
  end
end
