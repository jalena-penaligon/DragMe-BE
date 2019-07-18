class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :venues, :lat
    remove_column :venues, :long
  end
end
