class CreateMechanic < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.integer :experience
      t.timestamps
    end
  end
end
