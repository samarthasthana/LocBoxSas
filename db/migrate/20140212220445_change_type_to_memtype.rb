class ChangeTypeToMemtype < ActiveRecord::Migration
  def change
  	rename_column :users, :type, :memtype
  end
end
