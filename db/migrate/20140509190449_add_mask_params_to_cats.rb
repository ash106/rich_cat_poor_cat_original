class AddMaskParamsToCats < ActiveRecord::Migration
  def change
    add_column :cats, :mask_params, :string
  end
end
