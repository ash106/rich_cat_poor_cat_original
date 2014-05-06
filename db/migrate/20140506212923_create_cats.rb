class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :finances

      t.timestamps
    end
  end
end
