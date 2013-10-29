class CreateArmadillos < ActiveRecord::Migration
  def change
    create_table :armadillos do |t|
      t.string :name
      t.string :codename

      t.timestamps
    end
  end
end
