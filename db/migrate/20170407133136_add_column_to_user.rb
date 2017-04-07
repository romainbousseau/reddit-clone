class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :username, :stringrai
  end
end
