class ChangeMaskParamsToIntegers < ActiveRecord::Migration
  def change
    remove_column :cats, :mask_params
    add_column :cats, :x, :integer
    add_column :cats, :y, :integer
    add_column :cats, :radius, :integer
  end
end
