class CreateCritters < ActiveRecord::Migration[5.1]
  def change
    create_table :critters do |t|
      t.string :name
      t.integer :age
      t.integer :crit_type

      t.timestamps
    end
  end
end
