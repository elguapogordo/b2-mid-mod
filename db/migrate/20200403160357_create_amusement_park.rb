class CreateAmusementPark < ActiveRecord::Migration[5.1]
  def change
    create_table :amusement_parks do |t|
      t.string :name
      t.string :admissions
      t.timestamps
    end
  end
end
